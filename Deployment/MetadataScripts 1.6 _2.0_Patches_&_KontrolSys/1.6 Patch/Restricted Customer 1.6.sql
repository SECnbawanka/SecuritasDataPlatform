--- CUSTOMER_RESTRICTED_DATA added additional condition for GRS 1.6

Update DW.CONTROL.LOADPROCESS set EXPRESSIONS = 'SELECT CUST_OBJ_ID from ODS_GRS_NO.DBO.CUSTOMER_RESTRICTED_DATA a,STG_GRS_NO.DBO.CUST_CUST_OBJECT b where  b.CUSTOMER_ID =a.CUSTOMER_ID and a.SOURCE_SYSTEM_NAME = ''GRS_NO'''
Where ODSTABLENAME='CUSTOMER_OBJECT' AND SOURCESYSTEMID=1;

Update DW.CONTROL.LOADPROCESS set EXPRESSIONS = 'SELECT CUSTOMER_ID from ODS_GRS_NO.DBO.CUSTOMER_RESTRICTED_DATA a where a.SOURCE_SYSTEM_NAME = ''GRS_NO'''
Where ODSTABLENAME='CUST_CUST_OBJECT' AND SOURCESYSTEMID=1;

Update DW.CONTROL.LOADPROCESS set EXPRESSIONS = 'SELECT CONTRACT_ID from ODS_GRS_NO.DBO.CUSTOMER_RESTRICTED_DATA a, STG_GRS_NO.DBO.CONTRACT b where  b.CUSTOMER_ID =a.CUSTOMER_ID and a.SOURCE_SYSTEM_NAME = ''GRS_NO'''
Where ODSTABLENAME='CONTRACT_PART' AND SOURCESYSTEMID=1;

Update DW.CONTROL.LOADPROCESS set EXPRESSIONS = 'SELECT CONTRACT_ID from ODS_GRS_NO.DBO.CUSTOMER_RESTRICTED_DATA a, STG_GRS_NO.DBO.CONTRACT b where  b.CUSTOMER_ID =a.CUSTOMER_ID and a.SOURCE_SYSTEM_NAME = ''GRS_NO'''
Where ODSTABLENAME='CONTR_PART_VER' AND SOURCESYSTEMID=1;

Update DW.CONTROL.LOADPROCESS set EXPRESSIONS = 'SELECT CUSTOMER_ID from ODS_GRS_NO.DBO.CUSTOMER_RESTRICTED_DATA a where a.SOURCE_SYSTEM_NAME = ''GRS_NO'''
Where ODSTABLENAME='CONTRACT' AND SOURCESYSTEMID=1;

Update DW.CONTROL.LOADPROCESS set EXPRESSIONS = 'SELECT CUSTOMER_ID from ODS_GRS_NO.DBO.CUSTOMER_RESTRICTED_DATA a where a.SOURCE_SYSTEM_NAME = ''GRS_NO'''
Where ODSTABLENAME='CUSTOMER' AND SOURCESYSTEMID=1;


-- RERANKING the RESTRICTEDTABLE_RANK values for GRS 1.6

Update DW.CONTROL.LOADPROCESS set RESTRICTEDTABLE_RANK=1 Where ODSTABLENAME='CUSTOMER';
Update DW.CONTROL.LOADPROCESS set RESTRICTEDTABLE_RANK=2 Where ODSTABLENAME IN ('CONTRACT','CUST_CUST_OBJECT');
Update DW.CONTROL.LOADPROCESS set RESTRICTEDTABLE_RANK=3 Where ODSTABLENAME IN ('CONTR_PART_VER','CONTRACT_PART','CUSTOMER_OBJECT');