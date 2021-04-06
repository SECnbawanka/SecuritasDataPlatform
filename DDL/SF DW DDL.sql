CREATE or replace TABLE ALARM(
    ALARM_GROUP_ID             int               NULL,
    ALARM_ID                   int               NOT NULL,
    ALARM_TYPE_ID              int               NULL,
    INSERT_DATE                timestamp         NULL,
    CHANGE_DATE                timestamp         NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
  CONSTRAINT PK_ALARM PRIMARY KEY(ALARM_ID)
)
CLUSTER by (ALARM_ID);


CREATE or replace TABLE ALARM_ALARM_CODES(
    ALARM_ALARM_CODES_ID       int               NOT NULL,
    ALARM_ID                   int               NULL,
    ALARM_CODE_ID              int               NULL,
    INSERT_DATE                timestamp         NULL,
    CHANGE_DATE                timestamp         NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CONSTRAINT PK_ALARM_ALARM_CODES PRIMARY KEY (ALARM_ALARM_CODES_ID)
 )
  CLUSTER by (ALARM_ALARM_CODES_ID);

  CREATE or replace TABLE ALARM_CODES(
    ALARM_CODE_ID              int               NOT NULL,
    SHORT_DESCRIPTION          varchar(4000)      NULL,
    DESCRIPTION                text              NULL,
    INSERT_DATE                timestamp         NULL,
    CHANGE_DATE                timestamp         NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CONSTRAINT PK_ALARM_CODES PRIMARY KEY (ALARM_CODE_ID))
   CLUSTER BY (ALARM_CODE_ID);

CREATE or replace TABLE  ALARM_CODES_OBJECT(
    ALARM_CODE_OBJECT_ID       int               NOT NULL,
    CUSTOMER_ID                int               NULL,
    PROD_OBJ_ID                int               NULL,
    LOC_OBJ_ID                 int               NULL,
    DATEFROM                   timestamp     NULL,
    ALARM_CODE_ID              int               NULL,
    INSERT_DATE                timestamp         NULL,
    CHANGE_DATE                timestamp         NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CUST_OBJ_ID                int               NULL,
    CONSTRAINT PK_ALARM_CODES_OBJECT PRIMARY KEY  (ALARM_CODE_OBJECT_ID)
)
 CLUSTER BY (ALARM_CODE_OBJECT_ID);




CREATE or replace TABLE  ALARM_GROUP(
    ALARM_GROUP_ID             int               NOT NULL,
    DESCRIPTION                varchar(4000)      NULL,
    INSERT_DATE                timestamp         NULL,
    CHANGE_DATE                timestamp         NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CONSTRAINT PK_ALARM_GROUP PRIMARY KEY (ALARM_GROUP_ID)
)
CLUSTER BY (ALARM_GROUP_ID);


CREATE or replace TABLE  ASSIGNMENT_TYPE(
    ASSIGNMENT_TYPE_ID         int               NOT NULL,
    DESCRIPTION                varchar(4000)      NULL,
    INSERT_DATE                timestamp         NULL,
    CHANGE_DATE                timestamp         NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CONSTRAINT PK_ASSIGNMENT_TYPE PRIMARY KEY (ASSIGNMENT_TYPE_ID)
)
CLUSTER BY (ASSIGNMENT_TYPE_ID);


CREATE or replace TABLE  BLOCK_LIST(
    BLOCK_ID                   int               NOT NULL,
    INSERT_DATE                timestamp         NULL,
    CHANGE_DATE                timestamp         NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CONSTRAINT PK_BLOCK_LIST PRIMARY KEY (BLOCK_ID)
)
CLUSTER BY (BLOCK_ID);

CREATE or replace TABLE  CALENDAR_TEMPLATE(
    CALENDAR_TEMPLATE_ID       int               NOT NULL,
    INSERT_DATE                timestamp         NULL,
    CHANGE_DATE                timestamp         NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CONSTRAINT PK_CALENDAR_TEMPLATE PRIMARY KEY (CALENDAR_TEMPLATE_ID)
)
CLUSTER BY (CALENDAR_TEMPLATE_ID);

CREATE or replace TABLE  CANCEL_GROUND(
    CANCEL_GROUND_ID           int               NOT NULL,
    INSERT_DATE                timestamp         NULL,
    CHANGE_DATE                timestamp         NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CONSTRAINT PK_CANCEL_GROUND PRIMARY KEY (CANCEL_GROUND_ID)
)
CLUSTER BY (CANCEL_GROUND_ID);

CREATE or replace TABLE  CANCEL_TYPE(
    CANCEL_TYPE_ID             int               NOT NULL,
    INSERT_DATE                timestamp         NULL,
    CHANGE_DATE                timestamp         NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CONSTRAINT PK_CANCEL_TYPE PRIMARY KEY (CANCEL_TYPE_ID)
)
CLUSTER BY (CANCEL_TYPE_ID);

CREATE or replace TABLE  CITY_LIST(
    CITY_ID                    int               NOT NULL,
    INSERT_DATE                timestamp         NULL,
    CHANGE_DATE                timestamp         NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CONSTRAINT PK_CITY_LIST PRIMARY KEY (CITY_ID)
)
CLUSTER BY (CITY_ID);


CREATE or replace TABLE  CITY_PART(
    CITY_PART_ID               int               NOT NULL,
    INSERT_DATE                timestamp         NULL,
    CHANGE_DATE                timestamp         NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CONSTRAINT PK_CITY_PART PRIMARY KEY (CITY_PART_ID)
)
CLUSTER BY (CITY_PART_ID);

CREATE or replace TABLE  COMMITMENT(
    COMMITMENT_ID              int               NOT NULL,
    DESCRIPTION                varchar(4000)      NULL,
    INSTRUCTION                varchar(4000)      NULL,
    EXTRAORDER_ID              int               NULL,
    ASSIGNMENT_TYPE_ID         int               NULL,
    CONTRACT_PART_ID           int               NULL,
    INSERT_DATE                timestamp         NULL,
    CHANGE_DATE                timestamp         NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CONSTRAINT PK_COMMITMENT PRIMARY KEY (COMMITMENT_ID)
)
CLUSTER BY (COMMITMENT_ID);

CREATE or replace TABLE  COMMITMENT_LOC_MARK(
    COMMITMENT_ID              int               NULL,
    COMMITMENT_LOC_MARK_ID     int               NOT NULL,
    LOCATION_MARK_ID           int               NULL,
    INSERT_DATE                timestamp         NULL,
    CHANGE_DATE                timestamp         NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CONSTRAINT PK_COMMITMENT_LOC_MARK PRIMARY KEY (COMMITMENT_LOC_MARK_ID)
)
CLUSTER BY (COMMITMENT_LOC_MARK_ID);

CREATE or replace TABLE  CONTR_PART_VER(
    CONTRACT_ID                int               NOT NULL,
    CONTRACT_PART_ID           int               NULL,
    VERSION_FROM               timestamp     NOT NULL,
    PROFITCENTER_ID            int               NULL,
    INSERT_DATE                timestamp         NULL,
    CHANGE_DATE                timestamp         NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CONSTRAINT PK_CONTR_PART_VER PRIMARY KEY (CONTRACT_ID, VERSION_FROM)
)
CLUSTER BY (CONTRACT_ID, VERSION_FROM);

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


CREATE or replace TABLE  CONTRACT_PART(
    CONTRACT_PART_ID           int               NOT NULL,
    CONTRACT_PART_NO           varchar(4000)      NULL,
    CUST_OBJ_ID                int               NULL,
    PORTF_PROFITC_ID           int               NULL,
    PRODUCT_ID                 int               NULL,
    INSERT_DATE                timestamp         NULL,
    CHANGE_DATE                timestamp         NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CONSTRAINT PK_CONTRACT_PART PRIMARY KEY (CONTRACT_PART_ID)
)
CLUSTER BY (CONTRACT_PART_ID);

CREATE or replace TABLE  CONTRACT_TYPE(
    CONTRACT_TYPE_ID           int               NOT NULL,
    DESCRIPTION                varchar(4000)      NULL,
    INSERT_DATE                timestamp         NULL,
    CHANGE_DATE                timestamp         NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CONSTRAINT PK_CONTRACT_TYPE PRIMARY KEY (CONTRACT_TYPE_ID)
)
CLUSTER BY (CONTRACT_TYPE_ID);

CREATE or replace TABLE  CUST_CUST_OBJECT(
    CUSTOMER_ID                int               NOT NULL,
    CUST_OBJ_ID                int               NOT NULL,
    DATEFROM                   timestamp     NOT NULL,
    DATETO                     timestamp     NULL,
    INSERT_DATE                timestamp         NULL,
    CHANGE_DATE                timestamp         NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CONSTRAINT PK_CUST_CUST_OBJECT PRIMARY KEY (DATEFROM, CUSTOMER_ID, CUST_OBJ_ID)
)
CLUSTER BY (DATEFROM, CUSTOMER_ID, CUST_OBJ_ID);

CREATE or replace TABLE  CUSTOMER(
    CUSTOMER_ID                int               NOT NULL,
    NAME_SEARCH                varchar(4000)      NULL,
    CALENDAR_TEMPLATE_ID       int               NULL,
    CUSTOMER_NO                varchar(4000)      NULL,
    NAME_1                     varchar(4000)      NULL,
    ADDRESS                    varchar(4000)      NULL,
    POSTCODE                   varchar(4000)      NULL,
    POSTADDRESS                varchar(4000)      NULL,
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

CREATE or replace TABLE  CUSTOMER_OBJECT(
    CUST_OBJ_NO                varchar(4000)      NULL,
    CUST_OBJ_ID                int               NOT NULL,
    PROFITCENTER_ID            int               NULL,
    NAME                       varchar(4000)      NULL,
    ADDRESS                    varchar(4000)      NULL,
    POSTDELIVERY_ADDRESS       varchar(4000)      NULL,
    POSTCODE                   varchar(4000)      NULL,
    ADDRESS_2                  varchar(4000)      NULL,
    POSTADDRESS                varchar(4000)      NULL,
    CHANGE_DATE                timestamp         NULL,
    INSERT_DATE                timestamp         NULL,
    TERMINATE_DATE             timestamp     NULL,
    CITY_ID                    int               NULL,
    CITY_PART_ID               int               NULL,
    MARKET_ID                  int               NULL,
    BLOCK_ID                   int               NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CONSTRAINT PK_CUSTOMER_OBJECT PRIMARY KEY  (CUST_OBJ_ID)
)
CLUSTER BY (CUST_OBJ_ID);

CREATE or replace TABLE  CUSTOMER_TYPE(
    CALENDAR_TEMPLATE_ID       int               NOT NULL,
    INSERT_DATE                timestamp         NULL,
    CHANGE_DATE                timestamp         NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CONSTRAINT PK_CUSTOMER_TYPE PRIMARY KEY  (CALENDAR_TEMPLATE_ID)
)
CLUSTER BY (CALENDAR_TEMPLATE_ID);

CREATE or replace TABLE  EMPLOYEE(
    EMPLOYEE_ID                int               NOT NULL,
    INSERT_DATE                timestamp         NULL,
    CHANGE_DATE                timestamp         NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CONSTRAINT PK_EMPLOYEE PRIMARY KEY  (EMPLOYEE_ID)
)
CLUSTER BY (EMPLOYEE_ID);

CREATE or replace TABLE  EXTRAORDER(
    EXTRAORDER_ID              int               NOT NULL,
    INSERT_DATE                timestamp         NULL,
    CHANGE_DATE                timestamp         NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CONSTRAINT PK_EXTRAORDER PRIMARY KEY  (EXTRAORDER_ID)
)
CLUSTER BY (EXTRAORDER_ID);


CREATE or replace TABLE  GD(
    GD_ID                      int               NOT NULL,
    GD_NO                      varchar(4000)      NULL,
    CALENDAR_TEMPLATE_ID       int               NULL,
    PROFITCENTER_ID            int               NULL,
    GD_TYPE_ID                 int               NULL,
    INSERT_DATE                timestamp         NULL,
    CHANGE_DATE                timestamp         NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CONSTRAINT PK_GD PRIMARY KEY  (GD_ID)
)
CLUSTER BY (GD_ID);


CREATE or replace TABLE  GD_TYPE(
    GD_TYPE_ID                 int               NOT NULL,
    INSERT_DATE                timestamp         NULL,
    CHANGE_DATE                timestamp         NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CONSTRAINT PK_GD_TYPE PRIMARY KEY (GD_TYPE_ID)
)
CLUSTER BY (GD_TYPE_ID);

CREATE or replace TABLE  INVOICE_FEE(
    INVOICE_FEE_ID             int               NOT NULL,
    INSERT_DATE                timestamp         NULL,
    CHANGE_DATE                timestamp         NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CONSTRAINT PK_INVOICE_FEE PRIMARY KEY  (INVOICE_FEE_ID)
)
CLUSTER BY (INVOICE_FEE_ID);

CREATE or replace TABLE  INVOICE_TYPE(
    INVOICE_TYPE_ID            int               NOT NULL,
    INSERT_DATE                timestamp         NULL,
    CHANGE_DATE                timestamp         NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CONSTRAINT PK_INVOICE_TYPE PRIMARY KEY  (INVOICE_TYPE_ID)
)
CLUSTER BY (INVOICE_TYPE_ID);

CREATE or replace TABLE  LOC_MARK_SERVICE_EXT_INTERVAL(
    LOC_MARK_SERVICE_EXT_INTERVAL_ID    int               NOT NULL,
    LOCATION_MARK_ID                    int               NULL,
    INSERT_DATE                         timestamp         NULL,
    CHANGE_DATE                         timestamp         NULL,
    DW_SRC_SYSTEM_ID                    decimal(38, 0)    NULL,
    DW_CREATEDBY                        varchar(255)      NULL,
    DW_MODIFIEDBY                       varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP             timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP              timestamp         NULL,
    CONSTRAINT PK_LOC_MARK_SERVICE_EXT_INTERVAL PRIMARY KEY  (LOC_MARK_SERVICE_EXT_INTERVAL_ID)
)
CLUSTER BY (LOC_MARK_SERVICE_EXT_INTERVAL_ID);

CREATE or replace TABLE  LOC_MARK_SERVICE_INTERVAL(
    LOC_MARK_SERVICE_INTERVAL_ID       int               NOT NULL,
    LOC_MARK_SERVICE_TYPE_ITEM_2_ID    int               NULL,
    INSERT_DATE                        timestamp         NULL,
    CHANGE_DATE                        timestamp         NULL,
    DW_SRC_SYSTEM_ID                   decimal(38, 0)    NULL,
    DW_CREATEDBY                       varchar(255)      NULL,
    DW_MODIFIEDBY                      varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP            timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP             timestamp         NULL,
    CONSTRAINT PK_LOC_MARK_SERVICE_INTERVAL PRIMARY KEY  (LOC_MARK_SERVICE_INTERVAL_ID)
)
CLUSTER BY (LOC_MARK_SERVICE_INTERVAL_ID);

CREATE or replace TABLE  LOC_MARK_SERVICE_TYPE(
    LOC_MARK_SERVICE_TYPE_ID    int               NOT NULL,
    INSERT_DATE                 timestamp         NULL,
    CHANGE_DATE                 timestamp         NULL,
    DW_SRC_SYSTEM_ID            decimal(38, 0)    NULL,
    DW_CREATEDBY                varchar(255)      NULL,
    DW_MODIFIEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP     timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP      timestamp         NULL,
    CONSTRAINT PK_LOC_MARK_SERVICE_TYPE PRIMARY KEY  (LOC_MARK_SERVICE_TYPE_ID)
)
CLUSTER BY (LOC_MARK_SERVICE_TYPE_ID);

CREATE or replace TABLE  LOC_MARK_SERVICE_TYPE_ITEM(
    LOC_MARK_SERVICE_TYPE_ITEM_ID    int               NOT NULL,
    INSERT_DATE                      timestamp         NULL,
    CHANGE_DATE                      timestamp         NULL,
    DW_SRC_SYSTEM_ID                 decimal(38, 0)    NULL,
    DW_CREATEDBY                     varchar(255)      NULL,
    DW_MODIFIEDBY                    varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP          timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP           timestamp         NULL,
    CONSTRAINT PK_LOC_MARK_SERVICE_TYPE_ITEM PRIMARY KEY  (LOC_MARK_SERVICE_TYPE_ITEM_ID)
)
CLUSTER BY (LOC_MARK_SERVICE_TYPE_ITEM_ID);

CREATE or replace TABLE  LOC_MARK_SERVICE_TYPE_ITEM_2(
    LOC_MARK_SERVICE_TYPE_ITEM_2_ID    int               NOT NULL,
    INSERT_DATE                        timestamp         NULL,
    CHANGE_DATE                        timestamp         NULL,
    DW_SRC_SYSTEM_ID                   decimal(38, 0)    NULL,
    DW_CREATEDBY                       varchar(255)      NULL,
    DW_MODIFIEDBY                      varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP            timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP             timestamp         NULL,
    CONSTRAINT PK_LOC_MARK_SERVICE_TYPE_ITEM_2 PRIMARY KEY  (LOC_MARK_SERVICE_TYPE_ITEM_2_ID)
)
CLUSTER BY (LOC_MARK_SERVICE_TYPE_ITEM_2_ID);

CREATE or replace TABLE  LOC_MARK_TYPE(
    LOC_MARK_TYPE_ID           int               NOT NULL,
    INSERT_DATE                timestamp         NULL,
    CHANGE_DATE                timestamp         NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CONSTRAINT PK_LOC_MARK_TYPE PRIMARY KEY  (LOC_MARK_TYPE_ID)
)
CLUSTER BY (LOC_MARK_TYPE_ID);

CREATE or replace TABLE  LOCATION_MARK(
    LOCATION_MARK_ID                   int               NOT NULL,
    BARCODE                            varchar(4000)      NULL,
    POSITION                           varchar(4000)      NULL,
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

CREATE or replace TABLE  LOCATION_OBJECT(
    LOC_OBJ_ID                 int               NOT NULL,
    PROD_OBJ_ID                int               NOT NULL,
    DESCRIPTION                varchar(4000)      NULL,
    INSERT_DATE                timestamp         NULL,
    CHANGE_DATE                timestamp         NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CONSTRAINT PK_LOCATION_OBJECT PRIMARY KEY  (LOC_OBJ_ID, PROD_OBJ_ID)
)
CLUSTER BY (LOC_OBJ_ID, PROD_OBJ_ID);

CREATE or replace TABLE  MARKET(
    MARKET_ID                  int               NOT NULL,
    INSERT_DATE                timestamp         NULL,
    CHANGE_DATE                timestamp         NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CONSTRAINT PK_MARKET PRIMARY KEY  (MARKET_ID)
)
CLUSTER BY (MARKET_ID);

CREATE or replace TABLE  PROCESSED_COLLECTION(
    LOGG_ID                    int               NOT NULL,
    INSERT_DATE                timestamp         NULL,
    CHANGE_DATE                timestamp         NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CONSTRAINT PK_PROCESSED_COLLECTION PRIMARY KEY  (LOGG_ID)
)
CLUSTER BY (LOGG_ID);

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
    POSITION                   varchar(4000)      NULL,
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


CREATE or replace TABLE  PRODUCT(
    PRODUCT_ID                 int               NOT NULL,
    INSERT_DATE                timestamp         NULL,
    CHANGE_DATE                timestamp         NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CONSTRAINT PK_PRODUCT PRIMARY KEY  (PRODUCT_ID)
)
CLUSTER BY (PRODUCT_ID);

CREATE or replace TABLE  PRODUCTION_OBJECT(
    PROD_OBJ_ID                int               NOT NULL,
    PROD_OBJ_NO                varchar(4000)      NULL,
    DESCRIPTION                varchar(4000)      NULL,
    ADDRESS                    varchar(4000)      NULL,
    INSERT_DATE                timestamp         NULL,
    CHANGE_DATE                timestamp         NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CONSTRAINT PK_PRODUCTION_OBJECT PRIMARY KEY  (PROD_OBJ_ID)
)
CLUSTER BY (PROD_OBJ_ID);


CREATE or replace TABLE  PROFITCENTER(
    PROFITCENTER_ID            int               NOT NULL,
    PROFITCENTER_NO            varchar(4000)      NULL,
    INSERT_DATE                timestamp         NULL,
    CHANGE_DATE                timestamp         NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CONSTRAINT PK_PROFITCENTER PRIMARY KEY  (PROFITCENTER_ID)
)
CLUSTER BY (PROFITCENTER_ID);

CREATE or replace TABLE  REPORT_MARK(
    REPORT_MARK_ID             int               NOT NULL,
    REPORT_LABEL               varchar(4000)      NULL,
    PROFITCENTER_ID            int               NULL,
    CITY_PART_ID               int               NULL,
    INSERT_DATE                timestamp         NULL,
    CHANGE_DATE                timestamp         NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CONSTRAINT PK_REPORT_MARK PRIMARY KEY  (REPORT_MARK_ID)
)
CLUSTER BY (REPORT_MARK_ID);

CREATE or replace TABLE  REPORT_MARK_FOLDER(
    REPORT_MARK_FOLDER_ID      int               NOT NULL,
    INSERT_DATE                timestamp         NULL,
    CHANGE_DATE                timestamp         NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CONSTRAINT PK_REPORT_MARK_FOLDER PRIMARY KEY  (REPORT_MARK_FOLDER_ID)
)
CLUSTER BY (REPORT_MARK_FOLDER_ID);


CREATE or replace TABLE  REPORT_MARK_FOLDER_ITEM(
    REPORT_MARK_FOLDER_ID      int               NULL,
    REPORT_MARK_ID             int               NULL,
    INSERT_DATE                timestamp         NULL,
    CHANGE_DATE                timestamp         NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
	CONSTRAINT PK_REPORT_MARK_FOLDER_ITEM PRIMARY KEY  (REPORT_MARK_FOLDER_ID)
)
CLUSTER BY (REPORT_MARK_FOLDER_ID);


CREATE or replace TABLE  TEMP_COLLECTION(
    TEMP_COLLECTION_ID         int               NOT NULL,
    INSERT_DATE                timestamp         NULL,
    CHANGE_DATE                timestamp         NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CONSTRAINT PK_TEMP_COLLECTION PRIMARY KEY  (TEMP_COLLECTION_ID)
)
CLUSTER BY (TEMP_COLLECTION_ID);


CREATE or replace TABLE  TEMP_TRANSACTIONS(
    LOGG_ID                    int               NOT NULL,
    TEMP_COLLECTION_ID         int               NULL,
    TRANS_ID                   int               NOT NULL,
    BARCODE_TIME               timestamp          NULL,
    BARCODE_NO                 varchar(4000)      NULL,
    INSERT_DATE                timestamp          NULL,
    CHANGE_DATE                timestamp          NULL,
    LATITUDE                   decimal(18, 0)    NULL,
    LONGITUDE                  decimal(18, 0)    NULL,
    GPSTIMESTAMP               timestamp          NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CONSTRAINT PK_TEMP_TRANSACTIONS PRIMARY KEY  (LOGG_ID, TRANS_ID)
)
CLUSTER BY (LOGG_ID, TRANS_ID);

CREATE or replace TABLE  TERMS_OF_PAYMNT(
    TERMS_OF_PAYMNT_ID         int               NOT NULL,
    INSERT_DATE                timestamp         NULL,
    CHANGE_DATE                timestamp         NULL,
    DW_SRC_SYSTEM_ID           decimal(38, 0)    NULL,
    DW_CREATEDBY               varchar(255)      NULL,
    DW_MODIFIEDBY              varchar(255)      NULL,
    DW_MODIFIEDBY_TIMESTAMP    timestamp         NULL,
    DW_CREATEDBY_TIMESTAMP     timestamp         NULL,
    CONSTRAINT PK_TERMS_OF_PAYMNT PRIMARY KEY  (TERMS_OF_PAYMNT_ID)
)
CLUSTER BY (TERMS_OF_PAYMNT_ID);

