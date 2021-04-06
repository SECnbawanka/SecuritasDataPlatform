create or replace database STG_KONTROLSYS_NO;

create or replace schema DBO;

CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.BASEFILE (
	ID VARCHAR(16777216) NOT NULL,
	FILEDATAID NUMBER(38,0),
	SIZE NUMBER(38,0),
	FILENAME VARCHAR(300),
	CONTENTTYPE VARCHAR(260),
	DATEUPLOADED TIMESTAMP_NTZ(9),
	UPLOADEDBYID NUMBER(38,0)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.CONTRACT (
	ID NUMBER(38,0) NOT NULL,
	CUSTOMERID NUMBER(38,0),
	CONTRACTNO VARCHAR(50),
	STARTDATE TIMESTAMP_NTZ(9),
	ENDDATE TIMESTAMP_NTZ(9),
	TERMINATED BOOLEAN,
	TERMINATIONCODE NUMBER(38,0),
	TERMINATIONINFO VARCHAR(16777216),
	CUSTOMERSIGNEE VARCHAR(8388608),
	SECURITASSIGNEE VARCHAR(8388608),
	REMARKS VARCHAR(16777216),
	TERMS VARCHAR(16777216),
	ISDELETED BOOLEAN
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.CONTRACTCATEGORY1 (
	ID NUMBER(38,0) NOT NULL,
	NAME VARCHAR(1023)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.CONTRACTCATEGORY2 (
	ID NUMBER(38,0) NOT NULL,
	NAME VARCHAR(1023),
	CONTRACTCATEGORY1ID NUMBER(38,0)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.CONTRACTELEMENT (
	ID NUMBER(38,0) NOT NULL,
	CONTRACTID NUMBER(38,0),
	CONTROLTYPEID NUMBER(38,0),
	CUSTOMERINSTRUCTIONID NUMBER(38,0) NOT NULL,
	NAME VARCHAR(50),
	NUMBEROFCONTROLS NUMBER(38,0),
	CONTROLSPEROBJECT BOOLEAN,
	PORTEFOLIO BOOLEAN,
	CONTROLPRICE NUMBER(38,0),
	PRICEPERMONTH NUMBER(38,0),
	ISDELETED BOOLEAN,
	CREATEDBYID NUMBER(38,0),
	LASTEDITEDBYID NUMBER(38,0),
	CANADDOBJECTS BOOLEAN,
	ISCONTROLREMARKSMANDATORY BOOLEAN,
	HIDEEXACTTIMEFORCUSTOMER BOOLEAN,
	SHOWSENDCOPYTOFIELD BOOLEAN,
	ISNOTIFICATIONMANDATORY BOOLEAN,
	ISSIGNATUREREQUIRED BOOLEAN,
	ISINTERNAL BOOLEAN
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.CONTRACTELEMENTCONTRACTCATEGORY1 (
	ID NUMBER(38,0) NOT NULL,
	CONTRACTELEMENTID NUMBER(38,0),
	CONTRACTCATEGORY1ID NUMBER(38,0)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.CONTRACTELEMENTOBJECT (
	ID NUMBER(38,0) NOT NULL,
	CONTRACTELEMENTID NUMBER(38,0),
	OBJECTID NUMBER(38,0),
	OBJECTINSTRUCTIONID NUMBER(38,0),
	CONTROLSSOLD NUMBER(38,0),
	HOURSSOLD NUMBER(38,0),
	CONTROLSPAIDBYOBJECT BOOLEAN,
	NUMBEROFCONTROLSOVERRIDE NUMBER(38,0),
	ISDELETED BOOLEAN
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.CONTROL (
	ID NUMBER(38,0) NOT NULL,
	CONTRACTELEMENTOBJECTID NUMBER(38,0),
	PERFORMEDBYID NUMBER(38,0),
	CUSTOMERINSTRUCTIONID NUMBER(38,0),
	OBJECTINSTRUCTIONID NUMBER(38,0),
	STARTTIME TIMESTAMP_NTZ(9),
	ENDTIME TIMESTAMP_NTZ(9),
	INSTRUCTIONFOLLOWED BOOLEAN,
	REMARKS VARCHAR(8388608),
	INTERNALSECUREMARKS VARCHAR(8388608),
	LASTEDITEDBYID NUMBER(38,0),
	LASTCHANGEDTIME TIMESTAMP_NTZ(9),
	ISREGISTRATIONINPROGRESS BOOLEAN,
	TARGETEDCONTROL BOOLEAN,
	PRICE NUMBER(38,0),
	PAIDBYOBJECT BOOLEAN,
	REGISTRATIONSTARTEDTIME TIMESTAMP_NTZ(9),
	REGISTRATIONCOMPLETEDTIME TIMESTAMP_NTZ(9),
	ISFINALIZED BOOLEAN,
	ISREADYFORINVOICING BOOLEAN,
	CUSTOMERNOTIFIED BOOLEAN,
	HASINCIDENT BOOLEAN,
	ISDELETED BOOLEAN,
	BARCODE VARCHAR(200),
	COPYTOEMAILADDRESSES VARCHAR(8388608),
	HASSIGNATURE BOOLEAN,
	SIGNATURENAME VARCHAR(8388608),
	SIGNATUREFILEGUID VARCHAR(16777216),
	LATITUDE VARCHAR(8388608),
	LONGITUDE VARCHAR(8388608),
	IDENTIFICATIONSHOWNTYPE NUMBER(38,0),
	PROCESSED BOOLEAN,
	CONTRACTCATEGORY1TEXT VARCHAR(1023),
	CONTRACTCATEGORY2TEXT VARCHAR(1023),
	CONTRACTCATEGORY3TEXT VARCHAR(1023),
	FINALIZEDDATE TIMESTAMP_NTZ(9)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.CONTROLCOMMENT (
	ID NUMBER(38,0),
	CONTROLID NUMBER(38,0),
	USERID NUMBER(38,0),
	TEXT VARCHAR(8388608),
	TIME TIMESTAMP_NTZ(9),
	ISINTERNAL BOOLEAN,
	ISAUTOGENERATEDOREMPTY BOOLEAN,
	REGISTEREDWITHSHOWFORALL BOOLEAN
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.CONTROLFILE (
	ID VARCHAR(16777216) NOT NULL,
	CONTROLID NUMBER(38,0)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.CONTROLSERVICEREPORT (
	CONTROLID NUMBER(38,0) NOT NULL,
	REGISTRATIONTIME TIMESTAMP_NTZ(9),
	REGISTEREDBYID NUMBER(38,0),
	LASTCHANGEDBYID NUMBER(38,0),
	LASTCHANGEDTIME TIMESTAMP_NTZ(9),
	LOCATION VARCHAR(8388608),
	INSPECTORLIST VARCHAR(8388608),
	EXPLANATION VARCHAR(8388608),
	ISREGISTRATIONINPROGRESS BOOLEAN,
	ISDELETED BOOLEAN
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.CONTROLTYPE (
	ID NUMBER(38,0) NOT NULL,
	NAME VARCHAR(1000),
	ISACTIVE BOOLEAN,
	CONTROLTYPEENUM NUMBER(38,0)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.CUSTOMCONTROLTYPE (
	ID NUMBER(38,0) NOT NULL,
	DESCRIPTION VARCHAR(4000)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.CUSTOMCONTROLTYPECUSTOMER (
	CUSTOMCONTROLTYPEID NUMBER(38,0) NOT NULL,
	CUSTOMERID NUMBER(38,0)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.CUSTOMCONTROLTYPEFIELD (
	ID NUMBER(38,0) NOT NULL,
	CUSTOMCONTROLTYPEID NUMBER(38,0),
	QUESTION VARCHAR(4000),
	TYPE NUMBER(38,0),
	ISMANDATORY BOOLEAN,
	ALTERNATIVES VARCHAR(4000),
	ISMAINREPORTFIELD BOOLEAN
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.CUSTOMCONTROLTYPEFIELDANSWER (
	ID NUMBER(38,0) NOT NULL,
	CUSTOMCONTROLTYPEFIELDID NUMBER(38,0),
	CONTROLID NUMBER(38,0),
	ANSWER VARCHAR(8388608)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.CUSTOMER (
	ID NUMBER(38,0) NOT NULL,
	NAME VARCHAR(8388608),
	ADDRESS VARCHAR(8388608),
	CONTACTPERSONNAME VARCHAR(8388608),
	CONTACTPERSONID NUMBER(38,0),
	CONTACTPERSONPHONE VARCHAR(8388608),
	CONTACTPERSONEMAIL VARCHAR(8388608),
	SECUDEPT VARCHAR(20),
	CUSTOMEROWNER VARCHAR(8388608),
	MFCJOURNALID NUMBER(38,0),
	MFCCONTROLID NUMBER(38,0),
	ISDELETED BOOLEAN,
	CUSTOMERJOURNALINSTRUCTIONID NUMBER(38,0),
	CUSTOMERCATEGORYID NUMBER(38,0),
	FOLLOWUPACTIVATED BOOLEAN,
	NEXTFOLLOWUP TIMESTAMP_NTZ(9),
	FOLLOWUPINTERVAL NUMBER(38,0),
	FOLLOWUPCOPIESTO VARCHAR(8388608),
	DATARETENTIONAGREEMENTID NUMBER(38,0),
	CUSTOMERWORKSCHEDULEACTIVATED BOOLEAN,
	CONTRACTNAME VARCHAR(8388608),
	ENABLEJOURNALTASKS BOOLEAN,
	ENABLECONTROLZONES BOOLEAN,
	JOURNALNUMBEROFPEOPLEACTIVATED BOOLEAN,
	SHOWCONTROLFINALIZED BOOLEAN
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.CUSTOMERCATEGORY (
	ID NUMBER(38,0) NOT NULL,
	NAME VARCHAR(16777216),
	FOLLOWUPEMAILSTO VARCHAR(8388608),
	ISDELETED BOOLEAN
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.CUSTOMERCONTRACTCATEGORY1 (
	ID NUMBER(38,0) NOT NULL,
	CUSTOMERID NUMBER(38,0),
	CONTRACTCATEGORY1ID NUMBER(38,0)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.CUSTOMFIELD (
	ID NUMBER(38,0) NOT NULL,
	NAME VARCHAR(4000),
	TYPE NUMBER(38,0),
	CUSTOMFIELDGROUPID NUMBER(38,0),
	POSITION NUMBER(38,0),
	OPTIONS VARCHAR(16777216),
	BOOLEANMANDATORYCOMMENTFORTRUE BOOLEAN,
	BOOLEANMANDATORYCOMMENTFORFALSE BOOLEAN,
	ISMANDATORY BOOLEAN,
	POINTSRANGESTART NUMBER(38,0),
	POINTSRANGEEND NUMBER(38,0),
	ISDELETED BOOLEAN,
	ISLARGETEXTFIELD BOOLEAN,
	RANDOMLYCHOSENCOUNT NUMBER(38,0),
	ANSWERUITYPE NUMBER(38,0)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.CUSTOMFIELDALTERNATIVE (
	ID NUMBER(38,0) NOT NULL,
	CUSTOMFIELDID NUMBER(38,0),
	TEXT VARCHAR(200),
	POINTS NUMBER(38,0),
	ISINCIDENT BOOLEAN,
	MANDATORYCOMMENT BOOLEAN,
	POSITION NUMBER(38,0),
	ISDELETED BOOLEAN
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.CUSTOMFIELDGROUP (
	ID NUMBER(38,0) NOT NULL,
	NAME VARCHAR(200),
	CONTRACTELEMENTID NUMBER(38,0),
	POSITION NUMBER(38,0),
	ISDYNAMIC BOOLEAN,
	ISDELETED BOOLEAN
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.CUSTOMFIELDVALUE (
	ID NUMBER(38,0) NOT NULL,
	CUSTOMFIELDID NUMBER(38,0),
	CUSTOMFIELDTEXT VARCHAR(4000),
	VALUE VARCHAR(8388608),
	COMMENT VARCHAR(8388608),
	DYNAMICINDEX NUMBER(38,0),
	ISDELETED BOOLEAN,
	POINTS NUMBER(38,0),
	ISINCIDENT BOOLEAN,
	MAXPOINTS NUMBER(38,0),
	MANDATORYCHOSENVALUES VARCHAR(4000)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.CUSTOMFIELDVALUECONTROL (
	CUSTOMFIELDVALUEID NUMBER(38,0) NOT NULL,
	CONTROLID NUMBER(38,0)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.EMPLOYEE (
	ID NUMBER(38,0) NOT NULL,
	OBJECTID NUMBER(38,0),
	ISEMPLOYED BOOLEAN
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.FILEDATA (
	ID NUMBER(38,0) NOT NULL,
	DATA VARCHAR(16777216)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.JOURNAL (
	ID NUMBER(38,0) NOT NULL,
	OBJECTID NUMBER(38,0),
	PERFORMEDBYID NUMBER(38,0),
	OBJECTJOURNALINSTRUCTIONID NUMBER(38,0),
	LATITUDE VARCHAR(8388608),
	LONGITUDE VARCHAR(8388608),
	STARTTIME TIMESTAMP_NTZ(9),
	ENDTIME TIMESTAMP_NTZ(9),
	REMARKS VARCHAR(8388608),
	INTERNALSECUREMARKS VARCHAR(8388608),
	LASTEDITEDBYID NUMBER(38,0),
	LASTCHANGEDTIME TIMESTAMP_NTZ(9),
	ISREGISTRATIONINPROGRESS BOOLEAN,
	REGISTRATIONSTARTEDTIME TIMESTAMP_NTZ(9),
	REGISTRATIONCOMPLETEDTIME TIMESTAMP_NTZ(9),
	INCIDENTMESSAGETYPE NUMBER(38,0),
	INCIDENTTYPEID NUMBER(38,0),
	SUBTYPE NUMBER(38,0),
	ACTIONTAKEN VARCHAR(8388608),
	FORCEUSED BOOLEAN,
	POLICECALLED BOOLEAN,
	HANDCUFFSUSED BOOLEAN,
	CUSTOMERNOTIFIED BOOLEAN,
	ISDELETED BOOLEAN,
	NOTIFICATIONSSENT BOOLEAN,
	SECUID VARCHAR(8388608),
	ISALARM BOOLEAN,
	CUSTOMERJOURNALINSTRUCTIONID NUMBER(38,0),
	ADDITIONALOFFICERIDS VARCHAR(8388608),
	NUMBEROFPEOPLE NUMBER(38,0),
	JOURNALTASKID NUMBER(38,0),
	PROCESSED BOOLEAN
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.JOURNALADDITIONALSUBTYPE_BASE (
	ID NUMBER(38,0) NOT NULL,
	NAME VARCHAR(1000),
	POSITION NUMBER(38,0),
	ISDELETED BOOLEAN,
	BOXCOLOR VARCHAR(16777216),
	TEXTCOLOR VARCHAR(16777216)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.JOURNALADDITIONALSUBTYPE_GENERAL (
	ID NUMBER(38,0) NOT NULL,
	JOURNALADDITIONALTYPEBASEID NUMBER(38,0)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.JOURNALADDITIONALSUBTYPE_OBJECT (
	ID NUMBER(38,0) NOT NULL,
	JOURNALADDITIONALTYPECUSTOMERID NUMBER(38,0),
	OBJECTID NUMBER(38,0)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.JOURNALADDITIONALTYPE_BASE (
	ID NUMBER(38,0) NOT NULL,
	NAME VARCHAR(1000),
	ISDELETED BOOLEAN,
	FORCENOTIFICATION BOOLEAN,
	ISREPORTTYPE BOOLEAN,
	BOXCOLOR VARCHAR(16777216),
	TEXTCOLOR VARCHAR(16777216)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.JOURNALADDITIONALTYPE_CUSTOMER (
	ID NUMBER(38,0) NOT NULL,
	CUSTOMERID NUMBER(38,0)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.JOURNALADDITIONALTYPE_CUSTOMER_EXCLUDEFOROBJECT (
	JOURNALADDITIONALTYPE_CUSTOMERID NUMBER(38,0) NOT NULL,
	OBJECTID NUMBER(38,0) NOT NULL
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.JOURNALADDITIONALTYPE_OBJECT (
	ID NUMBER(38,0) NOT NULL,
	OBJECTID NUMBER(38,0)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.JOURNALANMELDELSE (
	ID NUMBER(38,0) NOT NULL,
	TIME TIMESTAMP_NTZ(9),
	WASPLANNED BOOLEAN,
	TOTALVALUE NUMBER(38,0),
	STOPPEDBYID NUMBER(38,0),
	POLICEWAITTIMEINMINUTES NUMBER(38,0),
	ORGANIZEDID NUMBER(38,0),
	POLICEID NUMBER(38,0)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.JOURNALANMELDELSEPERSON (
	ID NUMBER(38,0) NOT NULL,
	JOURNALID NUMBER(38,0),
	ISKNOWN VARCHAR(8388608),
	ISMALE VARCHAR(8388608),
	AGE VARCHAR(8388608),
	NATIONALITYID NUMBER(38,0),
	RESIDENCEID NUMBER(38,0)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.JOURNALANMELDELSEPRODUCT (
	ID NUMBER(38,0) NOT NULL,
	JOURNALID NUMBER(38,0),
	PRODUCTTYPEID NUMBER(38,0),
	COUNT NUMBER(38,0),
	VALUE NUMBER(38,0)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.JOURNALANMELDELSETOOL (
	JOURNALID NUMBER(38,0) NOT NULL,
	TOOLID NUMBER(38,0) NOT NULL
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.JOURNALCHECKLISTITEM (
	ID NUMBER(38,0) NOT NULL,
	JOURNALCHECKLIST_BASEID NUMBER(38,0),
	TYPE NUMBER(38,0),
	TEXT VARCHAR(4000),
	ANSWER NUMBER(38,0),
	COMMENT VARCHAR(8388608),
	SORTPOSITION NUMBER(38,0),
	ISDELETED BOOLEAN
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.JOURNALCHECKLIST_ADDITIONALTYPE (
	ID NUMBER(38,0) NOT NULL,
	JOURNALADDITIONALTYPE_BASEID NUMBER(38,0)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.JOURNALCHECKLIST_BASE (
	ID NUMBER(38,0) NOT NULL,
	ISDELETED BOOLEAN
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.JOURNALCHECKLIST_JOURNAL (
	ID NUMBER(38,0) NOT NULL,
	JOURNALID NUMBER(38,0)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.JOURNALCOLLECTIONCONTROL (
	ID NUMBER(38,0) NOT NULL,
	CUSTOMERID NUMBER(38,0),
	OBJECTID NUMBER(38,0)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.JOURNALCOLLECTIONCONTROLJOURNAL (
	ID NUMBER(38,0) NOT NULL,
	JOURNALCOLLECTIONCONTROLID NUMBER(38,0)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.JOURNALCOMMENT (
	ID NUMBER(38,0) NOT NULL,
	JOURNALID NUMBER(38,0),
	USERID NUMBER(38,0),
	TEXT VARCHAR(8388608),
	TIME TIMESTAMP_NTZ(9),
	ISINTERNAL BOOLEAN,
	ISAUTOGENERATEDOREMPTY BOOLEAN,
	REGISTEREDWITHSHOWFORALL BOOLEAN
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.JOURNALFILE (
	ID VARCHAR(16777216) NOT NULL,
	JOURNALID NUMBER(38,0)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.JOURNALTASK (
	ID NUMBER(38,0) NOT NULL,
	JOURNALADDITIONALTYPE_BASEID NUMBER(38,0),
	TIME TIMESTAMP_NTZ(9),
	HEADING VARCHAR(4000),
	TEXT VARCHAR(4000),
	ISAPPROVED BOOLEAN,
	VERSION NUMBER(38,0),
	ISDELETED BOOLEAN,
	ORIGINALJOURNALTASKID NUMBER(38,0),
	NEXTSCHEDULEDTIME TIMESTAMP_NTZ(9),
	PERFORMWINDOWHOURS NUMBER(38,0)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.JOURNALTASKFILE (
	ID VARCHAR(16777216) NOT NULL,
	JOURNALTASKID NUMBER(38,0)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.JOURNALTASK_CUSTOMER (
	ID NUMBER(38,0) NOT NULL,
	CUSTOMERID NUMBER(38,0)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.JOURNALTASK_OBJECT (
	ID NUMBER(38,0) NOT NULL,
	OBJECTID NUMBER(38,0)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.KASSECONTROL (
	ID NUMBER(38,0) NOT NULL,
	CUSTOMERCOUNT NUMBER(38,0),
	VISIBLEEMPLOYEECOUNT NUMBER(38,0),
	ACTIVECHECKOUTCOUNT NUMBER(38,0),
	CHECKOUTDESC VARCHAR(16777216),
	ISMALE VARCHAR(8388608),
	HASNAMETAG BOOLEAN,
	NAME VARCHAR(8388608),
	AGE VARCHAR(8388608),
	HEIGHT VARCHAR(8388608),
	HAIRCOLOR VARCHAR(8388608),
	BODYBUILD VARCHAR(8388608),
	DISTINCTFEATURES VARCHAR(8388608),
	QUEUEWAITTIME NUMBER(38,0),
	ADDITIONALSECUIDS VARCHAR(8388608)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.KASSECONTROLPURCHASE (
	ID NUMBER(38,0) NOT NULL,
	KASSECONTROLID NUMBER(38,0),
	PURCHASETYPE NUMBER(38,0),
	TIME TIMESTAMP_NTZ(9),
	EXACTAMOUNT BOOLEAN,
	REQUESTEDSCAN BOOLEAN,
	CORRECTAMOUNTREGISTERED BOOLEAN,
	MONEYPUTINCASHREGISTER BOOLEAN,
	RECEIPTGIVEN BOOLEAN,
	RECEIPTNO VARCHAR(100),
	COMMENT VARCHAR(8388608),
	ISDELETED BOOLEAN
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.KASSECONTROLPURCHASEPRODUCT (
	ID NUMBER(38,0) NOT NULL,
	KASSECONTROLPURCHASEID NUMBER(38,0),
	PRODUCTDESC VARCHAR(100),
	PRICE NUMBER(38,0),
	RETURNED BOOLEAN,
	RETURNDATE TIMESTAMP_NTZ(9),
	RETURNREGISTEREDBY NUMBER(38,0),
	ISDELETED BOOLEAN
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.KVALITETCONTROL (
	ID NUMBER(38,0) NOT NULL
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.MISSEDJOURNALTASK (
	ID NUMBER(38,0) NOT NULL,
	JOURNALTASKID NUMBER(38,0),
	DATETIME TIMESTAMP_NTZ(9)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.OBJECT (
	ID NUMBER(38,0) NOT NULL,
	CUSTOMERID NUMBER(38,0),
	SECUDEPARTMENTID NUMBER(38,0),
	OBJECTNO VARCHAR(100),
	NAME VARCHAR(8388608),
	ADDRESS VARCHAR(8388608),
	LATITUDE VARCHAR(8388608),
	LONGITUDE VARCHAR(8388608),
	PHONE VARCHAR(8388608),
	CUSTOMERNO VARCHAR(8388608),
	ORGANIZATIONNO VARCHAR(8388608),
	CUSTOMERNOINVOICE VARCHAR(8388608),
	LOCATIONNO VARCHAR(50),
	CONTACTPERSONID NUMBER(38,0),
	CONTACTPERSONNAME VARCHAR(8388608),
	CONTACTPERSONPHONE VARCHAR(8388608),
	CONTACTPERSONEMAIL VARCHAR(8388608),
	OBJECTJOURNALINSTRUCTIONID NUMBER(38,0),
	MFCJOURNALID NUMBER(38,0),
	MFCCONTROLID NUMBER(38,0),
	ISDELETED BOOLEAN,
	FOLLOWUPACTIVATED BOOLEAN,
	NEXTFOLLOWUP TIMESTAMP_NTZ(9),
	FOLLOWUPINTERVAL NUMBER(38,0),
	FOLLOWUPCOPIESTO VARCHAR(8388608),
	CAPACITY NUMBER(38,0),
	ABBREVIATION VARCHAR(8388608)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.OBJECTFILE (
	ID VARCHAR(16777216) NOT NULL,
	OBJECTID NUMBER(38,0)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.PERSON (
	ID NUMBER(38,0) NOT NULL,
	FIRSTNAME VARCHAR(8388608),
	LASTNAME VARCHAR(8388608),
	EMAIL VARCHAR(8388608),
	PHONE VARCHAR(8388608),
	ISDELETED BOOLEAN,
	FULLNAME VARCHAR(8388608),
	PHONEPREFIXID NUMBER(38,0)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.PHONEPREFIX (
	ID NUMBER(38,0) NOT NULL,
	COUNTRY VARCHAR(100),
	PHONEPREFIX VARCHAR(6),
	ISDEFAULT BOOLEAN,
	PHONEVALIDATIONREGEX VARCHAR(100)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.PRODUCTTYPE (
	ID NUMBER(38,0) NOT NULL,
	DESCRIPTION VARCHAR(100)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.ROUTE (
	ID NUMBER(38,0) NOT NULL,
	ZONEID NUMBER(38,0),
	ROUTENO VARCHAR(50),
	DESCRIPTION VARCHAR(200),
	ISDELETED BOOLEAN,
	CONTROLPERCENTAGE NUMBER(18,2),
	REPORTINGCATEGORY NUMBER(38,0)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.SECUDEPARTMENT (
	ID NUMBER(38,0) NOT NULL,
	SECUREGIONID NUMBER(38,0),
	NAME VARCHAR(100),
	ISDELETED BOOLEAN
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.SECUREGION (
	ID NUMBER(38,0) NOT NULL,
	NAME VARCHAR(100),
	ISDELETED BOOLEAN
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.SERVICEREPORT (
	ID NUMBER(38,0) NOT NULL,
	REGISTEREDBYID NUMBER(38,0),
	REGISTRATIONTIME TIMESTAMP_NTZ(9),
	LASTCHANGEDBYID NUMBER(38,0),
	LASTCHANGEDTIME TIMESTAMP_NTZ(9),
	LOCATION VARCHAR(8388608),
	INCIDENTTYPEID NUMBER(38,0),
	INSPECTORLIST VARCHAR(8388608),
	EXPLANATION VARCHAR(8388608),
	ISREGISTRATIONINPROGRESS BOOLEAN,
	ISDELETED BOOLEAN
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.SIVILTVAKTHOLDCONTROL (
	CONTROLID NUMBER(38,0) NOT NULL
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.SIVILTVAKTHOLDCONTROLINCIDENT (
	ID NUMBER(38,0) NOT NULL,
	SIVILTVAKTHOLDCONTROLID NUMBER(38,0),
	INCIDENTTIME TIMESTAMP_NTZ(9),
	INCIDENTTYPEID NUMBER(38,0),
	INCIDENTSUBTYPEID NUMBER(38,0),
	DESCRIPTION VARCHAR(8388608),
	ACTIONTAKEN VARCHAR(8388608),
	FORCEUSED BOOLEAN,
	HANDCUFFSUSED BOOLEAN,
	ISDELETED BOOLEAN
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.STATION (
	ID NUMBER(38,0) NOT NULL,
	ROUTEID NUMBER(38,0),
	NAME VARCHAR(100),
	SORTINDEX NUMBER(38,0),
	ISDELETED BOOLEAN,
	STATIONNO VARCHAR(50),
	GRUNNKRETSNO VARCHAR(50),
	GRUNNKRETS VARCHAR(200),
	BOROUGHNO VARCHAR(50),
	BOROUGH VARCHAR(200),
	MUNICIPALITYNO VARCHAR(50),
	MUNICIPALITY VARCHAR(200),
	REGION VARCHAR(200),
	FAREZONE VARCHAR(50),
	CONTROLZONE VARCHAR(100)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.TARGETEDCONTRACTELEMENT (
	ID NUMBER(38,0) NOT NULL,
	TARGETDESCRIPTION VARCHAR(8388608)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.TICKETINCIDENTTYPECONTRACT (
	TICKECTINCIDENTTYPEBASEID NUMBER(38,0) NOT NULL,
	TICKETINCIDENTCONTRACTID NUMBER(38,0) NOT NULL
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.TICKETINCIDENTTYPE_BASE (
	ID NUMBER(38,0) NOT NULL,
	DESCRIPTION VARCHAR(100),
	SORTINDEX NUMBER(38,0),
	ISACTIVE BOOLEAN,
	REGISTERISTICKETPAID BOOLEAN,
	REGISTERFEETYPE BOOLEAN,
	REGISTERCOMMENT BOOLEAN,
	REGISTERAGE BOOLEAN,
	REGISTERCONTROLNO BOOLEAN,
	REGISTERISUNDERAGE BOOLEAN,
	REGISTERISDRUGADDICT BOOLEAN,
	MODE NUMBER(38,0),
	ABBREVIATION VARCHAR(15)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.TICKETINCIDENTTYPE_CUSTOMER (
	ID NUMBER(38,0) NOT NULL,
	CUSTOMERID NUMBER(38,0)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.TICKETINCIDENT_BASE (
	ID NUMBER(38,0) NOT NULL,
	COUNT NUMBER(38,0),
	AGE VARCHAR(8388608),
	FEETYPE NUMBER(38,0),
	ISFEEPAID BOOLEAN,
	ISUNDERAGED VARCHAR(8388608),
	COMMENT VARCHAR(8388608),
	ISDELETED BOOLEAN,
	CONTROLNUMBER VARCHAR(1000),
	TICKETINSPECTIONBASEID NUMBER(38,0),
	TICKETINCIDENTTYPEID NUMBER(38,0)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.TICKETINSPECTIONCONTRACT (
	ID NUMBER(38,0) NOT NULL,
	CUSTOMERID NUMBER(38,0),
	CONTRACTNO VARCHAR(50),
	NAME VARCHAR(50),
	TICKETINSPECTIONTYPEID NUMBER(38,0),
	STARTDATE TIMESTAMP_NTZ(9),
	ENDDATE TIMESTAMP_NTZ(9),
	CUSTOMERSIGNEE VARCHAR(8388608),
	SECURITASSIGNEE VARCHAR(8388608),
	REMARKS VARCHAR(16777216),
	TERMS VARCHAR(16777216),
	CREATEDBYID NUMBER(38,0),
	LASTEDITEDBYID NUMBER(38,0),
	ISDELETED BOOLEAN,
	SHOWUNIFORM BOOLEAN,
	SHOWCLEANNESS BOOLEAN,
	SHOWSERVICE BOOLEAN,
	SHOWDIRECTION BOOLEAN,
	SHOWVEHICLETYPE BOOLEAN,
	SHOWTEAMNUMBER BOOLEAN,
	SHOWCONTROLLERUNIFORMTYPE BOOLEAN,
	SHOWTEAMSIZE BOOLEAN
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.TICKETINSPECTIONCONTRACTZONE (
	ID NUMBER(38,0) NOT NULL,
	TICKETINSPECTIONCONTRACTID NUMBER(38,0),
	ZONEID NUMBER(38,0),
	ISDELETED BOOLEAN
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.TICKETINSPECTIONUSER (
	TICKETINSPECTIONID NUMBER(38,0) NOT NULL,
	USERID NUMBER(38,0),
	SORTINDEX NUMBER(38,0)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.TICKETINSPECTION_BASE (
	ID NUMBER(38,0) NOT NULL,
	TICKETINSPECTIONCONTRACTID NUMBER(38,0),
	TIME TIMESTAMP_NTZ(9),
	INSPECTORCOUNT NUMBER(38,0),
	PASSENGERCOUNT NUMBER(38,0),
	CONTROLLEDCOUNT NUMBER(38,0),
	ROUTEID NUMBER(38,0),
	STARTSTATIONID NUMBER(38,0),
	ENDSTATIONID NUMBER(38,0),
	DELAYINMINUTES NUMBER(38,0),
	UNIFORMRATING NUMBER(38,0),
	CLEANNESSRATING NUMBER(38,0),
	SERVICERATING NUMBER(38,0),
	COMMENT VARCHAR(8388608),
	ISREGISTRATIONINPROGRESS BOOLEAN,
	ISDELETED BOOLEAN,
	DIRECTION NUMBER(38,0),
	VEHICLETYPE NUMBER(38,0),
	REGISTRATIONCOMPLEDEDTIME TIMESTAMP_NTZ(9),
	PERFORMEDBYID NUMBER(38,0),
	ADDITIONALOFFICERIDS VARCHAR(8388608),
	TEAMNUMBER VARCHAR(8388608),
	CONTROLLERUNIFORMTYPE NUMBER(38,0),
	TEAMSIZE NUMBER(38,0)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.TICKETINSPECTION_BUS (
	ID NUMBER(38,0) NOT NULL,
	BUSNO VARCHAR(10),
	DRIVERNO VARCHAR(8388608)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.TICKETINSPECTION_FERRY (
	ID NUMBER(38,0) NOT NULL,
	CARCOUNT NUMBER(38,0),
	ISPAXBEFORECARS BOOLEAN,
	PAXFIRSTCOMMENT VARCHAR(8388608),
	VESSELNAME VARCHAR(500),
	TRIPREFERENCENO VARCHAR(100)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.TICKETINSPECTION_PASSENGERFERRY (
	ID NUMBER(38,0) NOT NULL,
	VESSELNAME VARCHAR(500),
	TRIPREFERENCENO VARCHAR(100)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.USER (
	ID NUMBER(38,0) NOT NULL,
	USERNAME VARCHAR(8388608),
	SECUIDNO VARCHAR(8388608),
	DEPARTMENTNO VARCHAR(10)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.UTPASSERINGCONTROL (
	ID NUMBER(38,0) NOT NULL,
	NOTCONTROLLED NUMBER(38,0)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.UTPASSERINGCONTROLPERSON (
	ID NUMBER(38,0) NOT NULL,
	UTPASSERINGCONTROLID NUMBER(38,0),
	EMPLOYEEID NUMBER(38,0),
	REGISTREREDDATE TIMESTAMP_NTZ(9),
	CONTROLLEDDATE TIMESTAMP_NTZ(9),
	ISOK BOOLEAN,
	PERSONALDECLARATION BOOLEAN,
	PERSONELLPURCHASE BOOLEAN,
	RECEIPTNUMBER VARCHAR(200),
	PURCHASEDATE TIMESTAMP_NTZ(9),
	PURCHASEEMPLOYEEID NUMBER(38,0),
	COMMENT VARCHAR(8388608),
	ISDELETED BOOLEAN,
	PRODUCTDESCRIPTION VARCHAR(300),
	BARCODE VARCHAR(100),
	PRIS VARCHAR(30),
	PRODUCTCONDITION VARCHAR(30),
	EMPLOYEEEXPLANATION VARCHAR(8388608),
	IDENTIFICATIONSHOWNTYPE NUMBER(38,0),
	HASSIGNATURE BOOLEAN,
	SIGNATUREFILEGUID VARCHAR(16777216)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.UTREDNINGCONTROL (
	ID NUMBER(38,0) NOT NULL,
	EMPLOYMENTSTART VARCHAR(8388608),
	THEFTSTART TIMESTAMP_NTZ(9),
	GOODS BOOLEAN,
	GOODSDESC VARCHAR(16777216),
	MONEY BOOLEAN,
	OTHER VARCHAR(16777216),
	CONCEDEDAMOUNT NUMBER(38,0),
	METHOD VARCHAR(16777216),
	NUMBEROFCONTROLS NUMBER(38,0),
	EMPLOYMENTEND VARCHAR(8388608),
	AFTERCARE BOOLEAN,
	AFTERCAREDATE TIMESTAMP_NTZ(9),
	AFTERCARECOMMENT VARCHAR(8388608),
	HOURS NUMBER(38,0),
	FEE NUMBER(38,0),
	RECORDING BOOLEAN,
	RECORDINGCOMMENT VARCHAR(8388608),
	ISMALE VARCHAR(8388608),
	AGE VARCHAR(8388608)
);
CREATE OR REPLACE TABLE STG_KONTROLSYS_NO.DBO.ZONE (
	ID NUMBER(38,0) NOT NULL,
	CUSTOMERID NUMBER(38,0),
	NAME VARCHAR(100),
	ISDELETED BOOLEAN
);