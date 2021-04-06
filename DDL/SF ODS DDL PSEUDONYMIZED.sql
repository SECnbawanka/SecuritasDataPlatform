

CREATE TABLE CONTRACT(
    CONTRACT_ID                 INTEGER           NOT NULL,
    CONTRACT_NO                 VARCHAR(4000),
    CUSTOMER_ID                 INTEGER,
    MONTHLY_INC_ALL             DECIMAL(19, 4),
    CONTACT                     binary(4000),
    INVOICE_LATEST              DATE,
    INVOICED_TO                 DATE,
    VALIDTO                     DATE,
    INSERT_DATE                 TIMESTAMP,
    CHANGE_DATE                 TIMESTAMP,
    ODS_SRC_SYSTEM_ID           DECIMAL(38, 0),
    ODS_CREATEDBY               VARCHAR(255),
    ODS_MODIFIEDBY              VARCHAR(255),
    ODS_MODIFIEDBY_TIMESTAMP    TIMESTAMP,
    ODS_CREATEDBY_TIMESTAMP     TIMESTAMP,
    CONSTRAINT PK__CONTRACT__0F2D40CE PRIMARY KEY (CONTRACT_ID)
)
;


CREATE TABLE CUSTOMER(
    CUSTOMER_ID                 INTEGER           NOT NULL,
    NAME_SEARCH                 binary(4000),
    CUSTOMER_TYPE_ID            INTEGER,
    CUSTOMER_NO                 VARCHAR(4000),
    NAME_1                      binary(4000),
    ADDRESS                     binary(4000),
    POSTCODE                    binary(4000),
    POSTADDRESS                 binary(4000),
    VALIDTO                     DATE,
    INSERT_DATE                 TIMESTAMP,
    CHANGE_DATE                 TIMESTAMP,
    ODS_SRC_SYSTEM_ID           DECIMAL(38, 0),
    ODS_CREATEDBY               VARCHAR(255),
    ODS_MODIFIEDBY              VARCHAR(255),
    ODS_MODIFIEDBY_TIMESTAMP    TIMESTAMP,
    ODS_CREATEDBY_TIMESTAMP     TIMESTAMP,
    CONSTRAINT PK__CUSTOMER__7755B73D PRIMARY KEY (CUSTOMER_ID)
)
;



CREATE TABLE LOCATION_MARK(
    LOCATION_MARK_ID            INTEGER           NOT NULL,
    BARCODE                     VARCHAR(4000),
    POSITION                    binary(4000),
    POSITION_GUARD_INFO         VARCHAR(4000),
    INSERT_DATE                 TIMESTAMP,
    CHANGE_DATE                 TIMESTAMP,
    ODS_SRC_SYSTEM_ID           DECIMAL(38, 0),
    ODS_CREATEDBY               VARCHAR(255),
    ODS_MODIFIEDBY              VARCHAR(255),
    ODS_MODIFIEDBY_TIMESTAMP    TIMESTAMP,
    ODS_CREATEDBY_TIMESTAMP     TIMESTAMP,
    CONSTRAINT PK__LOCATION_MARK__4B422AD5 PRIMARY KEY (LOCATION_MARK_ID)
)
;


CREATE TABLE TEMP_TRANSACTIONS(
    LOGG_ID                     INTEGER           NOT NULL,
    TRANS_ID                    INTEGER           NOT NULL,
    BARCODE_TIME                TIMESTAMP,
    BARCODE_NO                  VARCHAR(4000),
    INSERT_DATE                 TIMESTAMP,
    CHANGE_DATE                 TIMESTAMP,
    LATITUDE                    binary(4000),
    LONGITUDE                  binary(4000),
    GPSTIMESTAMP                TIMESTAMP,
    ODS_SRC_SYSTEM_ID           DECIMAL(38, 0),
    ODS_CREATEDBY               VARCHAR(255),
    ODS_MODIFIEDBY              VARCHAR(255),
    ODS_MODIFIEDBY_TIMESTAMP    TIMESTAMP,
    ODS_CREATEDBY_TIMESTAMP     TIMESTAMP,
    CONSTRAINT PK__TEMP_TRA__106888C88FA870A2 PRIMARY KEY (LOGG_ID, TRANS_ID)
)
;



CREATE TABLE PROCESSED_TRANSACTIONS(
    LOGG_ID                     INTEGER           NOT NULL,
    TRANS_ID                    INTEGER           NOT NULL,
    SUB_ID                      INTEGER           NOT NULL,
    GD_ID                       INTEGER,
    PROD_OBJ_ID                 INTEGER,
    LOC_OBJ_ID                  INTEGER,
    MULTIPLICATION_FACTOR       INTEGER,
    REPORT_NOTES                VARCHAR(4000),
    COMMITMENT_ID               INTEGER,
    INSERT_DATE                 TIMESTAMP,
    CHANGE_DATE                 TIMESTAMP,
    POSITION                    binary(4000),
    BARCODE_TIME                TIMESTAMP,
    BARCODE_DATE                TIMESTAMP,
    ODS_SRC_SYSTEM_ID           DECIMAL(38, 0),
    ODS_CREATEDBY               VARCHAR(255),
    ODS_MODIFIEDBY              VARCHAR(255),
    ODS_MODIFIEDBY_TIMESTAMP    TIMESTAMP,
    ODS_CREATEDBY_TIMESTAMP     TIMESTAMP,
    CONSTRAINT PK__PROCESSED_TRANSA__79FD19BE PRIMARY KEY (LOGG_ID, TRANS_ID, SUB_ID)
)
;