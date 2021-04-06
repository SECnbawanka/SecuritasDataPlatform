CREATE OR REPLACE SCHEMA "DW"."SIS";

--------
CREATE OR REPLACE VIEW DW.SIS.V_ALARM_CODES AS 
SELECT ALARM_CODE_ID, SHORT_DESCRIPTION, DESCRIPTION, INSERT_DATE, CHANGE_DATE, ODS_SRC_SYSTEM_ID, ODS_CREATEDBY, ODS_MODIFIEDBY, ODS_MODIFIEDBY_TIMESTAMP, ODS_CREATEDBY_TIMESTAMP 
FROM ODS_GRS_NO.DBO.ALARM_CODES
;
GRANT SELECT ON VIEW DW.SIS.V_ALARM_CODES TO ROLE SISEU_DATAREADER;
-----

CREATE OR REPLACE VIEW DW.SIS.V_ALARM_GROUP AS 
SELECT ALARM_GROUP_ID, DESCRIPTION, INSERT_DATE, CHANGE_DATE, ODS_SRC_SYSTEM_ID, ODS_CREATEDBY, ODS_MODIFIEDBY, ODS_MODIFIEDBY_TIMESTAMP, ODS_CREATEDBY_TIMESTAMP
FROM ODS_GRS_NO.DBO.ALARM_GROUP
;
GRANT SELECT ON VIEW DW.SIS.V_ALARM_GROUP TO ROLE SISEU_DATAREADER;
------

CREATE OR REPLACE VIEW DW.SIS.V_ASSIGNMENT_TYPE AS 
SELECT ASSIGNMENT_TYPE_ID, DESCRIPTION, INSERT_DATE, CHANGE_DATE, ODS_SRC_SYSTEM_ID, ODS_CREATEDBY, ODS_MODIFIEDBY, ODS_MODIFIEDBY_TIMESTAMP, ODS_CREATEDBY_TIMESTAMP
FROM ODS_GRS_NO.DBO.ASSIGNMENT_TYPE
;
GRANT SELECT ON VIEW DW.SIS.V_ASSIGNMENT_TYPE TO ROLE SISEU_DATAREADER;
------

CREATE OR REPLACE VIEW DW.SIS.V_COMMITMENT AS 
SELECT COMMITMENT_ID, DESCRIPTION, INSTRUCTION, INSERT_DATE, CHANGE_DATE, ODS_SRC_SYSTEM_ID, ODS_CREATEDBY, ODS_MODIFIEDBY, ODS_MODIFIEDBY_TIMESTAMP, ODS_CREATEDBY_TIMESTAMP
FROM ODS_GRS_NO.DBO.COMMITMENT
;
GRANT SELECT ON VIEW DW.SIS.V_COMMITMENT TO ROLE SISEU_DATAREADER;
------

CREATE OR REPLACE VIEW DW.SIS.V_CONTRACT_PART AS 
SELECT CONTRACT_PART_ID, CONTRACT_PART_NO, CUST_OBJ_ID, INSERT_DATE, CHANGE_DATE, ODS_SRC_SYSTEM_ID, ODS_CREATEDBY, ODS_MODIFIEDBY, ODS_MODIFIEDBY_TIMESTAMP, ODS_CREATEDBY_TIMESTAMP
FROM ODS_GRS_NO.DBO.CONTRACT_PART
;
GRANT SELECT ON VIEW DW.SIS.V_CONTRACT_PART TO ROLE SISEU_DATAREADER;
------

CREATE OR REPLACE VIEW DW.SIS.V_CONTR_PART_VER AS 
SELECT CONTRACT_ID, CONTRACT_PART_ID, VERSION_FROM, PROFITCENTER_ID, INSERT_DATE, CHANGE_DATE, ODS_SRC_SYSTEM_ID, ODS_CREATEDBY, ODS_MODIFIEDBY, ODS_MODIFIEDBY_TIMESTAMP, ODS_CREATEDBY_TIMESTAMP
FROM ODS_GRS_NO.DBO.CONTR_PART_VER
;
GRANT SELECT ON VIEW DW.SIS.V_CONTR_PART_VER TO ROLE SISEU_DATAREADER;
------

CREATE OR REPLACE VIEW DW.SIS.V_CONTRACT_TYPE AS 
SELECT CONTRACT_TYPE_ID, DESCRIPTION, INSERT_DATE, CHANGE_DATE, ODS_SRC_SYSTEM_ID, ODS_CREATEDBY, ODS_MODIFIEDBY, ODS_MODIFIEDBY_TIMESTAMP, ODS_CREATEDBY_TIMESTAMP
FROM ODS_GRS_NO.DBO.CONTRACT_TYPE   
;
GRANT SELECT ON VIEW DW.SIS.V_CONTRACT_TYPE TO ROLE SISEU_DATAREADER;
------

CREATE OR REPLACE VIEW DW.SIS.V_CONTRACT AS 
SELECT CONTRACT_ID, CONTRACT_NO, CUSTOMER_ID, MONTHLY_INC_ALL, CONTACT, INVOICE_LATEST, INVOICED_TO, VALIDTO, INSERT_DATE, CHANGE_DATE, ODS_SRC_SYSTEM_ID, ODS_CREATEDBY, ODS_MODIFIEDBY, ODS_MODIFIEDBY_TIMESTAMP, ODS_CREATEDBY_TIMESTAMP
FROM ODS_GRS_NO.DBO.CONTRACT
;
GRANT SELECT ON VIEW DW.SIS.V_CONTRACT TO ROLE SISEU_DATAREADER;
------

CREATE OR REPLACE VIEW DW.SIS.V_CUST_CUST_OBJECT AS 
SELECT CUST_OBJ_ID, CUSTOMER_ID, DATEFROM, DATETO, INSERT_DATE, CHANGE_DATE, ODS_SRC_SYSTEM_ID, ODS_CREATEDBY, ODS_MODIFIEDBY, ODS_MODIFIEDBY_TIMESTAMP, ODS_CREATEDBY_TIMESTAMP
FROM ODS_GRS_NO.DBO.CUST_CUST_OBJECT
;
GRANT SELECT ON VIEW DW.SIS.V_CUST_CUST_OBJECT TO ROLE SISEU_DATAREADER;
------

CREATE OR REPLACE VIEW DW.SIS.V_CUSTOMER_OBJECT AS 
SELECT CUST_OBJ_NO, CUST_OBJ_ID, PROFITCENTER_ID, "NAME", ADDRESS, POSTDELIVERY_ADDRESS, POSTCODE, ADDRESS_2, POSTADDRESS, ASSIGNMENTGEOLOCATION, CHANGE_DATE, INSERT_DATE, TERMINATE_DATE, ODS_SRC_SYSTEM_ID, ODS_CREATEDBY, ODS_MODIFIEDBY, ODS_MODIFIEDBY_TIMESTAMP, ODS_CREATEDBY_TIMESTAMP
FROM ODS_GRS_NO.DBO.CUSTOMER_OBJECT
;
GRANT SELECT ON VIEW DW.SIS.V_CUSTOMER_OBJECT TO ROLE SISEU_DATAREADER;
------

CREATE OR REPLACE VIEW DW.SIS.V_CUSTOMER AS 
SELECT CUSTOMER_ID, NAME_SEARCH, CUSTOMER_TYPE_ID, CUSTOMER_NO, NAME_1, ADDRESS, POSTCODE, POSTADDRESS, VALIDTO, INSERT_DATE, CHANGE_DATE, ODS_SRC_SYSTEM_ID, ODS_CREATEDBY, ODS_MODIFIEDBY, ODS_MODIFIEDBY_TIMESTAMP, ODS_CREATEDBY_TIMESTAMP
FROM ODS_GRS_NO.DBO.CUSTOMER
;
GRANT SELECT ON VIEW DW.SIS.V_CUSTOMER TO ROLE SISEU_DATAREADER;
------

CREATE OR REPLACE VIEW DW.SIS.V_GD AS 
SELECT GD_ID, GD_NO, INSERT_DATE, CHANGE_DATE, ODS_SRC_SYSTEM_ID, ODS_CREATEDBY, ODS_MODIFIEDBY, ODS_MODIFIEDBY_TIMESTAMP, ODS_CREATEDBY_TIMESTAMP 
FROM ODS_GRS_NO.DBO.GD
;
GRANT SELECT ON VIEW DW.SIS.V_GD TO ROLE SISEU_DATAREADER;
------

CREATE OR REPLACE VIEW DW.SIS.V_LOCATION_MARK AS 
SELECT LOCATION_MARK_ID, BARCODE, "POSITION", POSITION_GUARD_INFO, INSERT_DATE, CHANGE_DATE, ODS_SRC_SYSTEM_ID, ODS_CREATEDBY, ODS_MODIFIEDBY, ODS_MODIFIEDBY_TIMESTAMP, ODS_CREATEDBY_TIMESTAMP
FROM ODS_GRS_NO.DBO.LOCATION_MARK
;
GRANT SELECT ON VIEW DW.SIS.V_LOCATION_MARK TO ROLE SISEU_DATAREADER;
------

CREATE OR REPLACE VIEW DW.SIS.V_LOCATION_OBJECT AS 
SELECT PROD_OBJ_ID, LOC_OBJ_ID, DESCRIPTION, CHANGE_DATE, INSERT_DATE, ODS_SRC_SYSTEM_ID, ODS_CREATEDBY, ODS_MODIFIEDBY, ODS_MODIFIEDBY_TIMESTAMP, ODS_CREATEDBY_TIMESTAMP 
FROM ODS_GRS_NO.DBO.LOCATION_OBJECT
;
GRANT SELECT ON VIEW DW.SIS.V_LOCATION_OBJECT TO ROLE SISEU_DATAREADER;
------

CREATE OR REPLACE VIEW DW.SIS.V_PRODUCTION_OBJECT AS 
SELECT PROD_OBJ_ID, PROD_OBJ_NO, DESCRIPTION, ADDRESS, CHANGE_DATE, INSERT_DATE, ODS_SRC_SYSTEM_ID, ODS_CREATEDBY, ODS_MODIFIEDBY, ODS_MODIFIEDBY_TIMESTAMP, ODS_CREATEDBY_TIMESTAMP
FROM ODS_GRS_NO.DBO.PRODUCTION_OBJECT
;
GRANT SELECT ON VIEW DW.SIS.V_PRODUCTION_OBJECT TO ROLE SISEU_DATAREADER;
------

CREATE OR REPLACE VIEW DW.SIS.V_PROFITCENTER AS 
SELECT PROFITCENTER_ID, PROFITCENTER_NO, INSERT_DATE, CHANGE_DATE, ODS_SRC_SYSTEM_ID, ODS_CREATEDBY, ODS_MODIFIEDBY, ODS_MODIFIEDBY_TIMESTAMP, ODS_CREATEDBY_TIMESTAMP 
FROM ODS_GRS_NO.DBO.PROFITCENTER
;
GRANT SELECT ON VIEW DW.SIS.V_PROFITCENTER TO ROLE SISEU_DATAREADER;
------

CREATE OR REPLACE VIEW DW.SIS.V_REPORT_MARK AS 
SELECT REPORT_MARK_ID, REPORT_LABEL, INSERT_DATE, CHANGE_DATE, ODS_SRC_SYSTEM_ID, ODS_CREATEDBY, ODS_MODIFIEDBY, ODS_MODIFIEDBY_TIMESTAMP, ODS_CREATEDBY_TIMESTAMP 
FROM ODS_GRS_NO.DBO.REPORT_MARK
;
GRANT SELECT ON VIEW DW.SIS.V_REPORT_MARK TO ROLE SISEU_DATAREADER;
------

CREATE OR REPLACE VIEW DW.SIS.V_PROCESSED_TRANSACTIONS AS 
SELECT LOGG_ID, TRANS_ID, SUB_ID, GD_ID, PROD_OBJ_ID, LOC_OBJ_ID, MULTIPLICATION_FACTOR, REPORT_NOTES, COMMITMENT_ID, INSERT_DATE, CHANGE_DATE, "POSITION", BARCODE_TIME, BARCODE_DATE, ODS_SRC_SYSTEM_ID, ODS_CREATEDBY, ODS_MODIFIEDBY, ODS_MODIFIEDBY_TIMESTAMP, ODS_CREATEDBY_TIMESTAMP
FROM ODS_GRS_NO.DBO.PROCESSED_TRANSACTIONS
;
GRANT SELECT ON VIEW DW.SIS.V_PROCESSED_TRANSACTIONS TO ROLE SISEU_DATAREADER;
------

CREATE OR REPLACE VIEW DW.SIS.V_TEMP_TRANSACTIONS AS 
SELECT LOGG_ID, TRANS_ID, BARCODE_TIME, BARCODE_NO, INSERT_DATE, CHANGE_DATE, LATITUDE, LONGITUDE, GPSTIMESTAMP, ODS_SRC_SYSTEM_ID, ODS_CREATEDBY, ODS_MODIFIEDBY, ODS_MODIFIEDBY_TIMESTAMP, ODS_CREATEDBY_TIMESTAMP
FROM ODS_GRS_NO.DBO.TEMP_TRANSACTIONS
;
GRANT SELECT ON VIEW DW.SIS.V_TEMP_TRANSACTIONS TO ROLE SISEU_DATAREADER;

------additionale tables----
CREATE OR REPLACE VIEW DW.SIS.V_GCS_Export_ERP_Call_Out_Guards AS 
SELECT BASE_LOCATION_NUMBER, COST_CENTRE, ARRIVAL_TIME, DEPARTURE_TIME, ELAPSED_TIME, GUARD_TYPE, INSERT_DATE, CHANGE_DATE, ODS_SRC_SYSTEM_ID, ODS_CREATEDBY, ODS_MODIFIEDBY, ODS_MODIFIEDBY_TIMESTAMP, ODS_CREATEDBY_TIMESTAMP
FROM ODS_GRS_NO.DBO.GCS_Export_ERP_Call_Out_Guards
;
GRANT SELECT ON VIEW DW.SIS.V_GCS_Export_ERP_Call_Out_Guards TO ROLE SISEU_DATAREADER;
------

CREATE OR REPLACE VIEW DW.SIS.V_GCS_Export_ERP_Call_Outs AS 
SELECT ALARM_NUMBER, CASE_NUMBER, ALARM_CENTER_NAME, ALARM_CENTER_REFERENCE, CUSTOMER_NAME_1, ALARM_TYPE, ALARM_TYPE_TEXT, ALARM_TIME, ALARM_REACH_TIME, BUILDING_NAME, BUILDING_LOCATION, BUILDING_SECTION, BUILDING_ADDRESS, FREE_TEXT_FROM_GUARD, FREE_TEXT_FROM_OPERATOR, ALARM_ISSUE_CODE, ALARM_ISSUE_DESCRIPTION, MEASURES_CODE, MEASURES_TEXT, GUARD_SECTION, INSERT_DATE, CHANGE_DATE, ODS_SRC_SYSTEM_ID, ODS_CREATEDBY, ODS_MODIFIEDBY, ODS_MODIFIEDBY_TIMESTAMP, ODS_CREATEDBY_TIMESTAMP
FROM ODS_GRS_NO.DBO.GCS_Export_ERP_Call_Outs
;
GRANT SELECT ON VIEW DW.SIS.V_GCS_Export_ERP_Call_Outs TO ROLE SISEU_DATAREADER;
------

CREATE OR REPLACE VIEW DW.SIS.V_GRS_AddOnInfo AS 
SELECT CASE_NUMBER, CUST_OBJ_NO, CUSTOMER_NO, GRSR_EVENT_ID, CHANGE_DATE, INSERT_DATE, ODS_SRC_SYSTEM_ID, ODS_CREATEDBY, ODS_MODIFIEDBY, ODS_MODIFIEDBY_TIMESTAMP, ODS_CREATEDBY_TIMESTAMP 
FROM ODS_GRS_NO.DBO.GRS_AddOnInfo;
GRANT SELECT ON VIEW DW.SIS.V_GRS_AddOnInfo TO ROLE SISEU_DATAREADER;