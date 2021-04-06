
-- For internal reference 
-- create a masking policy administrator custom role
--Query: create role masking_admin;

-- grant privileges to masking_admin role.
--Query: grant create masking policy on schema <schema_name> to role masking_admin;
--Query: grant apply masking policy on account to role masking_admin;

-- allow table_owner role to set or unset the ssn_mask masking policy (optional)
--Query: grant apply on masking policy ssn_mask to role table_owner;

/* Comments: * All added tables and views should be created in the clone called ODS_TRACKTIK_SIS (created by Brian), this is adjusted in script (Jon)
			 * Schema for Tracktik source is SEC_GLOBAL - changed (Jon)
			 * I have added script for schema creation for SIS and CONTROL (Jon)
			 * Control tables (CUSTOMER_RESTRICTED_DATA for example) to be added in schema CONTROL - changed (Jon)
			 * Schema for views is named SIS - that is changed for all views (Jon)
			 * CUSTOMID is a varchar(255) - changed for table CUSTOMER_RESTRICTED_DATA  (Jon)
			 * Table CUSTOMER_RESTRICTED_DATA =>  changed Insert script to include CUSTOMID for Microsoft (Jon)
			 * Masking of table ODS_TRACKTIK_SIS.SEC_GLOBAL.vision_us_accounts => address is a number (an addressID?), not varchar. Is this really PII?
*/


************* Create schema ******************

create or replace schema "ODS_TRACKTIK_SIS"."CONTROL";
create or replace schema "ODS_TRACKTIK_SIS"."SIS";



************* CUSTOMER_RESTRICTED_DATA *****************


create or replace TABLE ODS_TRACKTIK_SIS.CONTROL.CUSTOMER_RESTRICTED_DATA (
	"RowId" NUMBER(10,0),
	CUSTOMID VARCHAR(255),
	SOURCESYSTEMNAME VARCHAR(200)
);

************* Insert record for CUSTOMER_RESTRICTED_DATA *****************

-- Microsoft x4
Insert into ODS_TRACKTIK_SIS.CONTROL.CUSTOMER_RESTRICTED_DATA (RowId,CUSTOMID,SOURCESYSTEMNAME) values (1,'2280013131','TRACKTIK');
Insert into ODS_TRACKTIK_SIS.CONTROL.CUSTOMER_RESTRICTED_DATA (RowId,CUSTOMID,SOURCESYSTEMNAME) values (1,'24322','TRACKTIK');
Insert into ODS_TRACKTIK_SIS.CONTROL.CUSTOMER_RESTRICTED_DATA (RowId,CUSTOMID,SOURCESYSTEMNAME) values (1,'2280012174','TRACKTIK');
Insert into ODS_TRACKTIK_SIS.CONTROL.CUSTOMER_RESTRICTED_DATA (RowId,CUSTOMID,SOURCESYSTEMNAME) values (1,'2280012174-001','TRACKTIK');


*************  masking policy *****************

create or replace masking policy MP_VARCHAR as (val string) returns string ->
case
WHEN IS_ROLE_IN_SESSION('DECRYPT_ODS_TRACKTIK') = TRUE
THEN val
ELSE '*** RESTRICTED ACCESS ***'
end;


create or replace masking policy MP_NUMBER as (val NUMBER) returns number ->
case
WHEN IS_ROLE_IN_SESSION('DECRYPT_ODS_TRACKTIK') = TRUE
THEN val
ELSE -1
end;

create or replace masking policy MP_TIMESTAMP as (val timestamp) returns timestamp ->
case
WHEN IS_ROLE_IN_SESSION('DECRYPT_ODS_TRACKTIK') = TRUE
THEN val
ELSE '1900-01-01 00:00:00 +0000'
end;


************* P2 Scope view Scripts *****************

-- 1 VISION_US_ACCOUNTS


CREATE OR REPLACE secure VIEW ODS_TRACKTIK_SIS.SIS.vision_us_accounts AS
SELECT _update_time as updated_time,address,avatar,customId,id,name,region,status,subType,timeZone,type
FROM ODS_TRACKTIK_SIS.SEC_GLOBAL.vision_us_accounts
Where customId not in (Select CUSTOMID from ODS_TRACKTIK_SIS.CONTROL.customer_restricted_data
);

-- Applying masking policy 
alter view ODS_TRACKTIK_SIS.SIS.vision_us_accounts modify column address set masking policy MP_NUMBER;
alter view ODS_TRACKTIK_SIS.SIS.vision_us_accounts modify column name set masking policy MP_VARCHAR;
alter view ODS_TRACKTIK_SIS.SIS.vision_us_accounts modify column avatar set masking policy MP_VARCHAR;

----------


-- 2 VISION_US_CHECKPOINTS

CREATE OR REPLACE secure VIEW ODS_TRACKTIK_SIS.SIS.vision_us_checkpoints AS
SELECT _update_time as updated_time,account,active,allowManualScan,exceptionCategory,
id,instructions,monitorType,name,position,scanActionMessage,scanActionMultiple,scanActionQuestion,
scanActionType,scanCode,scanReportTemplate,siteLocation
FROM ODS_TRACKTIK_SIS.SEC_GLOBAL.vision_us_checkpoints
where Account
not in (select ID from "ODS_TRACKTIK_SIS"."SEC_GLOBAL"."VISION_US_ACCOUNTS" c,
"ODS_TRACKTIK_SIS"."CONTROL"."CUSTOMER_RESTRICTED_DATA" d
where c.CUSTOMID = d.CUSTOMID);  

-- 3 VISION_US_CHECKPOINT_SCANS

CREATE OR REPLACE secure VIEW ODS_TRACKTIK_SIS.SIS.vision_us_checkpoint_scans AS
SELECT _update_time as updated_time,checkpoint,id,latitude,longitude,scannedBy,scannedOn,tourSession
FROM ODS_TRACKTIK_SIS.SEC_GLOBAL.vision_us_checkpoint_scans where
CHECKPOINT not in (
select b.ID from "ODS_TRACKTIK_SIS"."SEC_GLOBAL"."VISION_US_CHECKPOINTS" b, 
"ODS_TRACKTIK_SIS"."SEC_GLOBAL"."VISION_US_ACCOUNTS" c, 
"ODS_TRACKTIK_SIS"."CONTROL"."CUSTOMER_RESTRICTED_DATA" d 
Where  b.Account=c.ID
and c.CUSTOMID = d.CUSTOMID
);

alter view ODS_TRACKTIK_SIS.SIS.vision_us_checkpoint_scans modify column latitude set masking policy MP_NUMBER;     
alter view ODS_TRACKTIK_SIS.SIS.vision_us_checkpoint_scans modify column longitude set masking policy MP_NUMBER;	
alter view ODS_TRACKTIK_SIS.SIS.vision_us_checkpoint_scans modify column scannedBy set masking policy MP_NUMBER;	
alter view ODS_TRACKTIK_SIS.SIS.vision_us_checkpoint_scans modify column scannedOn set masking policy MP_TIMESTAMP;	

------------------------------------------------


-- 6 VISION_US_CLIENT_EXTRAS

CREATE OR REPLACE secure VIEW ODS_TRACKTIK_SIS.SIS.vision_us_client_extras AS 
SELECT anonymous,cliendDomainId,connectId,contract,contractBilling,customId,department,id,optOut,verticalMarket
FROM ODS_TRACKTIK_SIS.SEC_GLOBAL.vision_us_client_extras
Where customId not in (Select CUSTOMID from ODS_TRACKTIK_SIS.CONTROL.customer_restricted_data
);

-- 5 VISION_US_CLIENTS

CREATE OR REPLACE secure VIEW ODS_TRACKTIK_SIS.SIS.vision_us_clients AS 
SELECT _update_time as updated_time,addressLine1,addressLine2,city,company,country,customId,email,firstName,id,jobTitle,
lastName,parentClient,postalCode,primaryPhone,region,secondaryPhone,state,status,timeZone,type
FROM ODS_TRACKTIK_SIS.SEC_GLOBAL.vision_us_clients
Where customId not in (Select CUSTOMID from ODS_TRACKTIK_SIS.CONTROL.customer_restricted_data
);



alter view ODS_TRACKTIK_SIS.SIS.vision_us_clients modify column addressLine1 set masking policy MP_VARCHAR;
alter view ODS_TRACKTIK_SIS.SIS.vision_us_clients modify column addressLine2 set masking policy MP_VARCHAR;
alter view ODS_TRACKTIK_SIS.SIS.vision_us_clients modify column city set masking policy MP_VARCHAR;
alter view ODS_TRACKTIK_SIS.SIS.vision_us_clients modify column company set masking policy MP_VARCHAR;

alter view ODS_TRACKTIK_SIS.SIS.vision_us_clients modify column country set masking policy MP_VARCHAR;
alter view ODS_TRACKTIK_SIS.SIS.vision_us_clients modify column email set masking policy MP_VARCHAR;
alter view ODS_TRACKTIK_SIS.SIS.vision_us_clients modify column firstName set masking policy MP_VARCHAR;
alter view ODS_TRACKTIK_SIS.SIS.vision_us_clients modify column lastName set masking policy MP_VARCHAR;

alter view ODS_TRACKTIK_SIS.SIS.vision_us_clients modify column postalCode set masking policy MP_VARCHAR;
alter view ODS_TRACKTIK_SIS.SIS.vision_us_clients modify column primaryPhone set masking policy MP_VARCHAR;
alter view ODS_TRACKTIK_SIS.SIS.vision_us_clients modify column secondaryPhone set masking policy MP_VARCHAR;
alter view ODS_TRACKTIK_SIS.SIS.vision_us_clients modify column state set masking policy MP_VARCHAR;

alter view ODS_TRACKTIK_SIS.SIS.vision_us_clients modify column jobTitle set masking policy MP_VARCHAR;
alter view ODS_TRACKTIK_SIS.SIS.vision_us_clients modify column parentClient set masking policy MP_NUMBER;



-- 7 VISION_US_POSITIONS

CREATE OR REPLACE secure VIEW ODS_TRACKTIK_SIS.SIS.vision_us_positions AS
SELECT _update_time as updated_time,account,beginDate,contract,customId,description,endDate,id,name,shiftMemo,status
FROM ODS_TRACKTIK_SIS.SEC_GLOBAL.vision_us_positions
Where customId not in (Select CUSTOMID from ODS_TRACKTIK_SIS.CONTROL.customer_restricted_data
);



-- 10 VISION_US_REGIONS


CREATE OR REPLACE secure VIEW ODS_TRACKTIK_SIS.SIS.vision_us_regions AS 
SELECT _update_time as updated_time,address,customId,email,firstName,id,lastName,name,primaryPhone,timeZone
FROM ODS_TRACKTIK_SIS.SEC_GLOBAL.vision_us_regions
Where customId not in (Select CUSTOMID from ODS_TRACKTIK_SIS.CONTROL.customer_restricted_data
);

alter view ODS_TRACKTIK_SIS.SIS.vision_us_regions modify column address set masking policy MP_NUMBER;
alter view ODS_TRACKTIK_SIS.SIS.vision_us_regions modify column email set masking policy MP_VARCHAR;
alter view ODS_TRACKTIK_SIS.SIS.vision_us_regions modify column firstName set masking policy MP_VARCHAR;

alter view ODS_TRACKTIK_SIS.SIS.vision_us_regions modify column lastName set masking policy MP_VARCHAR;
alter view ODS_TRACKTIK_SIS.SIS.vision_us_regions modify column name set masking policy MP_VARCHAR;
alter view ODS_TRACKTIK_SIS.SIS.vision_us_regions modify column primaryPhone set masking policy MP_VARCHAR;



CREATE OR REPLACE secure VIEW ODS_TRACKTIK_SIS.SIS.vision_us_report_fields AS 
SELECT _update_time as updated_time,archived,id,
--image_url, --does not exist
report,
--resource_id, -- does not exist
--resource_type, -- does not exist
templateField,
--type, -- does not exist
value,value_text
FROM ODS_TRACKTIK_SIS.SEC_GLOBAL.vision_us_report_fields;



-- alter view ODS_TRACKTIK_SIS.SIS.vision_us_report_fields modify column image_url set masking policy MP_VARCHAR;  --image_url does not exist
alter view ODS_TRACKTIK_SIS.SIS.vision_us_report_fields modify column value set masking policy MP_VARCHAR;
alter view ODS_TRACKTIK_SIS.SIS.vision_us_report_fields modify column value_text set masking policy MP_VARCHAR;


CREATE OR REPLACE secure VIEW ODS_TRACKTIK_SIS.SIS.vision_us_report_flags	AS 
SELECT _update_time as updated_time,alias,category,customId,details,guidReferenceId,id,name,severityLevel,showInDefaultGroup
FROM ODS_TRACKTIK_SIS.SEC_GLOBAL.vision_us_report_flags
Where customId not in (Select CUSTOMID from ODS_TRACKTIK_SIS.CONTROL.customer_restricted_data
);

alter view ODS_TRACKTIK_SIS.SIS.vision_us_report_flags modify column details set masking policy MP_VARCHAR;




CREATE OR REPLACE secure VIEW ODS_TRACKTIK_SIS.SIS.vision_us_report_templates AS 
SELECT _update_time as updated_time,adminOnly,details,id,name
FROM ODS_TRACKTIK_SIS.SEC_GLOBAL.vision_us_report_templates;



-- 8 VISION_US_REPORTS


CREATE OR REPLACE secure VIEW ODS_TRACKTIK_SIS.SIS.vision_us_reports	AS 
SELECT _update_time as updated_time,account,approvalDateTime,approvedBy,checkpoint,createdBy,createdOn,id,
position,reportDateTime,
--reportFields,
reportFlag,reportTemplate,siteLocation,status,submitTime,updatedBy,updatedOn
FROM ODS_TRACKTIK_SIS.SEC_GLOBAL.vision_us_reports
where Account
not in (select ID from "ODS_TRACKTIK_SIS"."SEC_GLOBAL"."VISION_US_ACCOUNTS" c,
"ODS_TRACKTIK_SIS"."CONTROL"."CUSTOMER_RESTRICTED_DATA" d
where c.CUSTOMID = d.CUSTOMID);


alter view ODS_TRACKTIK_SIS.SIS.vision_us_reports modify column approvedBy set masking policy MP_NUMBER;
alter view ODS_TRACKTIK_SIS.SIS.vision_us_reports modify column createdBy set masking policy MP_NUMBER;
alter view ODS_TRACKTIK_SIS.SIS.vision_us_reports modify column updatedBy set masking policy MP_NUMBER;



-- 9 VISION_US_SITE_LOCATIONS

CREATE OR REPLACE secure VIEW ODS_TRACKTIK_SIS.SIS.vision_us_site_locations AS 
SELECT _update_time as updated_time,account,id,name,type
FROM ODS_TRACKTIK_SIS.SEC_GLOBAL.vision_us_site_locations
where Account
not in (select ID from "ODS_TRACKTIK_SIS"."SEC_GLOBAL"."VISION_US_ACCOUNTS" c,
"ODS_TRACKTIK_SIS"."CONTROL"."CUSTOMER_RESTRICTED_DATA" d
where c.CUSTOMID = d.CUSTOMID);


************* T2 Scope view Scripts *****************


/* -- Corresponding table does not exist
CREATE OR REPLACE secure VIEW ODS_TRACKTIK_SIS.SIS._vision_us_report_fields AS 
SELECT 
value ,value_text , _update_time as updated_time, ,id ,archived ,report ,templateField 
FROM ODS_TRACKTIK_SIS.SEC_GLOBAL._vision_us_report_fields;

alter view ODS_TRACKTIK_SIS.SIS._vision_us_report_fields modify column value set masking policy MP_VARCHAR;
alter view ODS_TRACKTIK_SIS.SIS._vision_us_report_fields modify column value_text set masking policy MP_VARCHAR;
*/


CREATE OR REPLACE secure VIEW ODS_TRACKTIK_SIS.SIS.vision_us_checkpoint_tour_schedules AS 
SELECT tour ,weekDay ,startTime , _update_time as updated_time, id 
FROM ODS_TRACKTIK_SIS.SEC_GLOBAL.vision_us_checkpoint_tour_schedules;


--alter table if exists ODS_TRACKTIK_SIS.SEC_GLOBAL.vision_us_checkpoint_tour_sessions modify column employee set masking policy MP_VARCHAR;

CREATE OR REPLACE secure VIEW ODS_TRACKTIK_SIS.SIS.vision_us_checkpoint_tour_sessions	AS 
SELECT employee ,checkpointCache ,checkpointTotal ,status ,tour ,batchId ,endDateTime ,startDateTime , _update_time as updated_time, id 
FROM ODS_TRACKTIK_SIS.SEC_GLOBAL.vision_us_checkpoint_tour_sessions;

alter view ODS_TRACKTIK_SIS.SIS.vision_us_checkpoint_tour_sessions modify column employee set masking policy MP_number;


-- 4 VISION_US_CHECKPOINT_TOURS

CREATE OR REPLACE secure VIEW ODS_TRACKTIK_SIS.SIS.vision_us_checkpoint_tours	AS 
select details ,account ,active ,estimatedDuration ,gracePeriod ,name ,position ,recurrenceType ,
_update_time as updated_time, id 
FROM ODS_TRACKTIK_SIS.SEC_GLOBAL.vision_us_checkpoint_tours
where Account
not in (select ID from "ODS_TRACKTIK_SIS"."SEC_GLOBAL"."VISION_US_ACCOUNTS" c,
"ODS_TRACKTIK_SIS"."CONTROL"."CUSTOMER_RESTRICTED_DATA" d
where c.CUSTOMID = d.CUSTOMID);




CREATE OR REPLACE secure VIEW ODS_TRACKTIK_SIS.SIS.vision_us_employees AS 
SELECT age ,birthday ,employmentProfile ,gender ,username ,primaryPhone ,secondaryPhone ,ageGroup ,customId ,address ,email ,firstName ,jobTitle ,
lastName ,name ,createdBy ,avatar ,createdOn ,region ,status ,updatedBy ,_update_time as updated_time,id ,updatedOn 
FROM ODS_TRACKTIK_SIS.SEC_GLOBAL.vision_us_employees
Where customId not in (Select CUSTOMID from ODS_TRACKTIK_SIS.CONTROL.customer_restricted_data
);


alter view ODS_TRACKTIK_SIS.SIS.vision_us_employees modify column age set masking policy MP_VARCHAR;
alter view ODS_TRACKTIK_SIS.SIS.vision_us_employees modify column birthday set masking policy MP_VARCHAR;
alter view ODS_TRACKTIK_SIS.SIS.vision_us_employees modify column employmentProfile set masking policy MP_number;
alter view ODS_TRACKTIK_SIS.SIS.vision_us_employees modify column gender set masking policy MP_VARCHAR;
alter view ODS_TRACKTIK_SIS.SIS.vision_us_employees modify column username set masking policy MP_VARCHAR;
alter view ODS_TRACKTIK_SIS.SIS.vision_us_employees modify column primaryPhone set masking policy MP_VARCHAR;
alter view ODS_TRACKTIK_SIS.SIS.vision_us_employees modify column secondaryPhone set masking policy MP_VARCHAR;
alter view ODS_TRACKTIK_SIS.SIS.vision_us_employees modify column ageGroup set masking policy MP_VARCHAR;
alter view ODS_TRACKTIK_SIS.SIS.vision_us_employees modify column customId set masking policy MP_VARCHAR;

alter view ODS_TRACKTIK_SIS.SIS.vision_us_employees modify column address set masking policy MP_number;
alter view ODS_TRACKTIK_SIS.SIS.vision_us_employees modify column email set masking policy MP_VARCHAR;
alter view ODS_TRACKTIK_SIS.SIS.vision_us_employees modify column firstName set masking policy MP_VARCHAR;
alter view ODS_TRACKTIK_SIS.SIS.vision_us_employees modify column jobTitle set masking policy MP_VARCHAR;
alter view ODS_TRACKTIK_SIS.SIS.vision_us_employees modify column lastName set masking policy MP_VARCHAR;
alter view ODS_TRACKTIK_SIS.SIS.vision_us_employees modify column name set masking policy MP_VARCHAR;
alter view ODS_TRACKTIK_SIS.SIS.vision_us_employees modify column createdBy set masking policy MP_number;



CREATE OR REPLACE secure VIEW ODS_TRACKTIK_SIS.SIS.vision_us_report_template_fields AS 
SELECT _update_time as updated_time,id ,adminOnly ,displayOrder ,extra ,isDispatcherField ,label ,list ,name ,reportTemplate ,required ,type 
FROM ODS_TRACKTIK_SIS.SEC_GLOBAL.vision_us_report_template_fields;

CREATE OR REPLACE secure VIEW ODS_TRACKTIK_SIS.SIS.vision_us_task_types AS 
SELECT active ,billable ,dispatchable ,dispatchGroup ,name ,prefix ,priority ,reportTemplate ,schedulable ,_update_time ,id 
FROM ODS_TRACKTIK_SIS.SEC_GLOBAL.vision_us_task_types;

/*  --ODS_TRACKTIK_SIS.SEC_GLOBAL.warehouse_setting does not exist in clone *
CREATE OR REPLACE secure VIEW ODS_TRACKTIK_SIS.SIS.warehouse_setting AS 
SELECT log_cursor ,customId 
FROM ODS_TRACKTIK_SIS.SEC_GLOBAL.warehouse_setting;
*/


/*** GRANTS ***/

--grant usage on database ODS_TRACKTIC_SIS to role DECRYPT_ODS_TRACKTIK -- Role Sogeti has no privileges
--grant usage on schema ODS_TRACKTIC_SIS.SIS to role DECRYPT_ODS_TRACKTIK -- SQL compilation error: Database 'ODS_TRACKTIC_SIS' does not exist or not authorized.

grant select on all views in schema ODS_TRACKTIK_SIS.SIS to role DECRYPT_ODS_TRACKTIK -- OK

















