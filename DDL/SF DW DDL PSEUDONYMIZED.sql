CREATE or replace TABLE  CONTRACT(
    CONTRACT_ID                int               NOT NULL,
    INVOICE_FEE_ID             int               NULL,
	CONTRACT_NO                 VARCHAR(4000)    NULL,
    CUSTOMER_ID                 INTEGER          NULL,
    MONTHLY_INC_ALL             DECIMAL(19, 4)   NULL,
    CONTACT                     binary(4000)     NULL,
    INVOICE_LATEST              timestamp        NULL,
    INVOICED_TO                 timestamp        NULL,
    VALIDTO                     timestamp        NULL,
	INVOICE_TYPE_ID            int               NULL,
    CANCEL_GROUND_ID           int               NULL,
    CANCEL_TYPE_ID             int               NULL,
    TERMS_OF_PAYMENT_ID        int               NULL,
    CONTRACT_TYPE_ID           int               NULL,
    TERMS_OF_PAYMNT_ID         int               NULL,
    INSERT_DATE                timestamp         NULL,
    CHANGE_DATE                timestamp         NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CONSTRAINT PK_CONTRACT PRIMARY KEY (CONTRACT_ID)
)
CLUSTER BY (CONTRACT_ID);


CREATE or replace TABLE  CUSTOMER(
    CUSTOMER_ID                int               NOT NULL,
    NAME_SEARCH                binary(4000)      NULL,
    CALENDAR_TEMPLATE_ID       int               NULL,
    CUSTOMER_NO                binary(4000)      NULL,
    NAME_1                     binary(4000)      NULL,
    ADDRESS                    binary(4000)      NULL,
    POSTCODE                   binary(4000)      NULL,
    POSTADDRESS                binary(4000)      NULL,
    VALIDTO                    timestamp     NULL,
    INSERT_DATE                timestamp         NULL,
    CHANGE_DATE                timestamp         NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CONSTRAINT PK_CUSTOMER PRIMARY KEY (CUSTOMER_ID)
)
CLUSTER BY (CUSTOMER_ID);

CREATE or replace TABLE  LOCATION_MARK(
    LOCATION_MARK_ID                   int               NOT NULL,
    BARCODE                            varchar(4000)      NULL,
    POSITION                           binary(4000)      NULL,
    POSITION_GUARD_INFO                varchar(4000)      NULL,
    LOC_MARK_TYPE_ID                   int               NULL,
    LOC_MARK_SERVICE_TYPE_ID           int               NULL,
    LOC_MARK_SERVICE_TYPE_ITEM_ID      int               NULL,
    LOC_MARK_SERVICE_TYPE_ITEM_2_ID    int               NULL,
    INSERT_DATE                        timestamp         NULL,
    CHANGE_DATE                        timestamp         NULL,
    DW_SRC_SYSTEM_ID                   decimal(38, 0)    NULL,
    DW_CREATEDBY                       varchar(255)      NULL,
    DW_MODIFIEDBY                      varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP            timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP             timestamp         NULL,
    CONSTRAINT PK_LOCATION_MARK PRIMARY KEY  (LOCATION_MARK_ID)
)
CLUSTER BY (LOCATION_MARK_ID);

CREATE or replace TABLE  TEMP_TRANSACTIONS(
    LOGG_ID                    int               NOT NULL,
    TEMP_COLLECTION_ID         int               NULL,
    TRANS_ID                   int               NOT NULL,
    BARCODE_TIME               timestamp          NULL,
    BARCODE_NO                 varchar(4000)      NULL,
    INSERT_DATE                timestamp          NULL,
    CHANGE_DATE                timestamp          NULL,
    LATITUDE                   binary(4000)    NULL,
    LONGITUDE                  binary(4000)    NULL,
    GPSTIMESTAMP               timestamp          NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CONSTRAINT PK_TEMP_TRANSACTIONS PRIMARY KEY  (LOGG_ID, TRANS_ID)
)
CLUSTER BY (LOGG_ID, TRANS_ID);


CREATE or replace TABLE  PROCESSED_TRANSACTIONS(
    LOGG_ID                    int               NULL,
    TRANS_ID                   int               NULL,
    SUB_ID                     int               NOT NULL,
    GD_ID                      int               NULL,
    PROD_OBJ_ID                int               NULL,
    LOC_OBJ_ID                 int               NULL,
    MULTIPLICATION_FACTOR      int               NULL,
    REPORT_NOTES               varchar(4000)      NULL,
    COMMITMENT_ID              int               NULL,
    INSERT_DATE                timestamp          NULL,
    CHANGE_DATE                timestamp          NULL,
    POSITION                   binary(4000)      NULL,
    BARCODE_TIME               timestamp          NULL,
    BARCODE_DATE               timestamp          NULL,
    EMPLOYEE_ID                int               NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CONSTRAINT PK_PROCESSED_TRANSACTIONS PRIMARY KEY  (SUB_ID)
)
CLUSTER BY (SUB_ID);



