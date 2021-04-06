CREATE ROLE SISEU_DATAREADER

CREATE OR REPLACE USER SISDS_USER password='*******' Must_Change_Password = FALSE; 
GRANT ROLE SISEU_DATAREADER TO USER SISDS_USER;
GRANT USAGE ON DATABASE DW TO ROLE SISEU_DATAREADER
GRANT USAGE ON SCHEMA DW.SIS TO ROLE SISEU_DATAREADER; --Confirm again USAGE ON SCHEMA exists or not if not run again post below REVOKE USAGEs are accomplishes

------ Below Scripts does not work on Revoke Hence Please refer below snapshot TO REVOKE USAGE ON SCHEMAS------
//REVOKE USAGE ON SCHEMA "DW"."BASE" FROM ROLE SISEU_DATAREADER;
//REVOKE USAGE ON SCHEMA "DW"."CONTROL" FROM ROLE SISEU_DATAREADER;
//REVOKE USAGE ON SCHEMA "DW"."KEY" FROM ROLE SISEU_DATAREADER;
//REVOKE USAGE ON SCHEMA "DW"."PUBLIC" FROM ROLE SISEU_DATAREADER;
//REVOKE USAGE ON SCHEMA "DW"."REFERENCE" FROM ROLE SISEU_DATAREADER;

--GRANT SELECT ON VIEW DW.SIS.V_ALARM_CODES TO ROLE SISEU_DATAREADER;
--DROP ROLE ROLE_Read_only
--show grants 
--select * from snowflake.account_usage.grants_TO_ROLEs where Table_Catalog = 'DW' and Table_Schema = 'SIS';
--drop USER sisUSER2
-------------------------------------
CREATE USER "kriti.paliwal" password='3k!sn8ZD-#X2' DEFAULT_ROLE = SISEU_DATAREADER Must_Change_Password = FALSE;
GRANT ROLE SISEU_DATAREADER TO USER "kriti.paliwal"

CREATE OR REPLACE USER "zachary.peterso" password='EnysMAXMSxdk' DEFAULT_ROLE = SISEU_DATAREADER Must_Change_Password = FALSE;
GRANT ROLE SISEU_DATAREADER TO USER "zachary.peterso";

CREATE OR REPLACE USER "shuainan.zhao" password='***********' DEFAULT_ROLE = SISEU_DATAREADER Must_Change_Password = FALSE;
GRANT ROLE SISEU_DATAREADER TO USER "shuainan.zhao";

CREATE OR REPLACE USER "anlai.gao" password='***********' DEFAULT_ROLE = SISEU_DATAREADER Must_Change_Password = FALSE;
GRANT ROLE SISEU_DATAREADER TO USER "anlai.gao";

CREATE OR REPLACE USER "sebastian.nyberg" password='***********' DEFAULT_ROLE = SISEU_DATAREADER Must_Change_Password = FALSE;
GRANT ROLE SISEU_DATAREADER TO USER "sebastian.nyberg";

CREATE OR REPLACE USER "johannes.skog" password='***********' DEFAULT_ROLE = SISEU_DATAREADER Must_Change_Password = FALSE;
GRANT ROLE SISEU_DATAREADER TO USER "johannes.skog";

CREATE OR REPLACE USER "malin.lundqvist" password='***********' DEFAULT_ROLE = SISEU_DATAREADER Must_Change_Password = FALSE;
GRANT ROLE SISEU_DATAREADER TO USER "malin.lundqvist";

CREATE OR REPLACE USER "henrik.gronholtjensen" password='***********' DEFAULT_ROLE = SISEU_DATAREADER Must_Change_Password = FALSE;
GRANT ROLE SISEU_DATAREADER TO USER "henrik.gronholtjensen";

CREATE OR REPLACE USER "jonas.alstrom.mortin" password='***********' DEFAULT_ROLE = SISEU_DATAREADER Must_Change_Password = FALSE;
GRANT ROLE SISEU_DATAREADER TO USER "jonas.alstrom.mortin";

CREATE OR REPLACE USER "daniel.sandberg" password='***********' DEFAULT_ROLE = SISEU_DATAREADER Must_Change_Password = FALSE;
GRANT ROLE SISEU_DATAREADER TO USER "daniel.sandberg";

CREATE OR REPLACE USER "carl.frolund" password='***********' DEFAULT_ROLE = SISEU_DATAREADER Must_Change_Password = FALSE;
GRANT ROLE SISEU_DATAREADER TO USER "carl.frolund";
