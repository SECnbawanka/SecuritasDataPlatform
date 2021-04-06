CREATE OR REPLACE DATABASE STG_REFERENCE;

CREATE OR REPLACE SCHEMA STG_REFERENCE.BASE;

USE SCHEMA STG_REFERENCE.BASE;

CREATE OR REPLACE TABLE AZURE_IP (
	APPLICATION VARIANT NOT NULL
);
CREATE OR REPLACE TABLE NETWORK_POLICY (
	IP_RANGE VARCHAR(2000),
	CATEGORY VARCHAR(2000),
	NOTES VARCHAR(2000),
	DEV_ACTIVEFLAG BOOLEAN,
	TEST_ACTIVEFLAG BOOLEAN,
	PROD_ACTIVEFLAG BOOLEAN
);