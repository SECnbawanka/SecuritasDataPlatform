
--************ CUSTOMER_RESTRICTED_DATA added additional condition for GRS 2.0  ************

---CONTACT_OBJECT	CUSTOMER_ID

Update DW.CONTROL.LOADPROCESS set 
ISRESTRICTED = TRUE, 
RESTRICTEDCOLUMNNAME = 'CONTACT_PERSON_ID',
RESTRICTEDTABLENAME = 'CUSTOMER_RESTRICTED_DATA',
EXPRESSIONS  = 'SELECT CONTACT_PERSON_ID from ODS_GRS_NO.DBO.CUSTOMER_RESTRICTED_DATA a,STG_GRS_NO.DBO.CONTACT_OBJECT b
where  b.CUSTOMER_ID =a.CUSTOMER_ID and a.SOURCE_SYSTEM_NAME = ''GRS_NO''',
RESTRICTEDTABLE_RANK=3
Where ODSTABLENAME = 'CONTACT_PERSON' and SOURCESYSTEMID = 1 ;

Update DW.CONTROL.LOADPROCESS set 
ISRESTRICTED = TRUE, 
RESTRICTEDCOLUMNNAME = 'CONTACT_PERSON_ID',
RESTRICTEDTABLENAME = 'CUSTOMER_RESTRICTED_DATA',
EXPRESSIONS  = 'SELECT CONTACT_PERSON_ID from ODS_GRS_NO.DBO.CUSTOMER_RESTRICTED_DATA a,STG_GRS_NO.DBO.CONTACT_OBJECT b
where  b.CUSTOMER_ID =a.CUSTOMER_ID and a.SOURCE_SYSTEM_NAME = ''GRS_NO''',
RESTRICTEDTABLE_RANK=3
Where ODSTABLENAME = 'CONT_PERS_COM' and SOURCESYSTEMID = 1 ;

Update DW.CONTROL.LOADPROCESS set 
ISRESTRICTED = TRUE, 
RESTRICTEDCOLUMNNAME = 'CONTACT_PERSON_ID',
RESTRICTEDTABLENAME = 'CUSTOMER_RESTRICTED_DATA',
EXPRESSIONS  = 'SELECT CONTACT_PERSON_ID from ODS_GRS_NO.DBO.CUSTOMER_RESTRICTED_DATA a,STG_GRS_NO.DBO.CONTACT_OBJECT b
where  b.CUSTOMER_ID =a.CUSTOMER_ID and a.SOURCE_SYSTEM_NAME = ''GRS_NO''',
RESTRICTEDTABLE_RANK=3
Where ODSTABLENAME = 'CONT_PERS_FUNC' and SOURCESYSTEMID = 1 ;

Update DW.CONTROL.LOADPROCESS set 
ISRESTRICTED = TRUE, 
RESTRICTEDCOLUMNNAME = 'CONTACT_PERSON_ID',
RESTRICTEDTABLENAME = 'CUSTOMER_RESTRICTED_DATA',
EXPRESSIONS  = 'SELECT CONTACT_PERSON_ID from ODS_GRS_NO.DBO.CUSTOMER_RESTRICTED_DATA a,STG_GRS_NO.DBO.CONTACT_OBJECT b
where  b.CUSTOMER_ID =a.CUSTOMER_ID and a.SOURCE_SYSTEM_NAME = ''GRS_NO''',
RESTRICTEDTABLE_RANK=3
Where ODSTABLENAME = 'REPORT_CONTACT_OBJECT' and SOURCESYSTEMID = 1 ;


---GRSR_CUSTOMER_REPORT_MARK_FOLDER	CUSTOMER_ID

Update DW.CONTROL.LOADPROCESS set 
ISRESTRICTED = TRUE, 
RESTRICTEDCOLUMNNAME = 'REPORT_MARK_FOLDER_ID',
RESTRICTEDTABLENAME = 'CUSTOMER_RESTRICTED_DATA',
EXPRESSIONS  = 'SELECT REPORT_MARK_FOLDER_ID from ODS_GRS_NO.DBO.CUSTOMER_RESTRICTED_DATA a,STG_GRS_NO.DBO.GRSR_CUSTOMER_REPORT_MARK_FOLDER b
where  b.CUSTOMER_ID =a.CUSTOMER_ID and a.SOURCE_SYSTEM_NAME = ''GRS_NO''',
RESTRICTEDTABLE_RANK=3
Where ODSTABLENAME = 'REPORT_MARK_FOLDER' and SOURCESYSTEMID = 1 ;

Update DW.CONTROL.LOADPROCESS set 
ISRESTRICTED = TRUE, 
RESTRICTEDCOLUMNNAME = 'REPORT_MARK_FOLDER_ID',
RESTRICTEDTABLENAME = 'CUSTOMER_RESTRICTED_DATA',
EXPRESSIONS  = 'SELECT REPORT_MARK_FOLDER_ID from ODS_GRS_NO.DBO.CUSTOMER_RESTRICTED_DATA a,STG_GRS_NO.DBO.GRSR_CUSTOMER_REPORT_MARK_FOLDER b
where  b.CUSTOMER_ID =a.CUSTOMER_ID and a.SOURCE_SYSTEM_NAME = ''GRS_NO''',
RESTRICTEDTABLE_RANK=3
Where ODSTABLENAME = 'GD' and SOURCESYSTEMID = 1 ;

Update DW.CONTROL.LOADPROCESS set 
ISRESTRICTED = TRUE, 
RESTRICTEDCOLUMNNAME = 'REPORT_MARK_FOLDER_ID',
RESTRICTEDTABLENAME = 'CUSTOMER_RESTRICTED_DATA',
EXPRESSIONS  = 'SELECT REPORT_MARK_FOLDER_ID from ODS_GRS_NO.DBO.CUSTOMER_RESTRICTED_DATA a,STG_GRS_NO.DBO.GRSR_CUSTOMER_REPORT_MARK_FOLDER b
where  b.CUSTOMER_ID =a.CUSTOMER_ID and a.SOURCE_SYSTEM_NAME = ''GRS_NO''',
RESTRICTEDTABLE_RANK=3
Where ODSTABLENAME = 'REPORT_MARK_FOLDER_ITEM' and SOURCESYSTEMID = 1 ;

Update DW.CONTROL.LOADPROCESS set 
ISRESTRICTED = TRUE, 
RESTRICTEDCOLUMNNAME = 'REPORT_MARK_FOLDER_ID',
RESTRICTEDTABLENAME = 'CUSTOMER_RESTRICTED_DATA',
EXPRESSIONS  = 'SELECT REPORT_MARK_FOLDER_ID from ODS_GRS_NO.DBO.CUSTOMER_RESTRICTED_DATA a,STG_GRS_NO.DBO.GRSR_CUSTOMER_REPORT_MARK_FOLDER b
where  b.CUSTOMER_ID =a.CUSTOMER_ID and a.SOURCE_SYSTEM_NAME = ''GRS_NO''',
RESTRICTEDTABLE_RANK=3
Where ODSTABLENAME = 'REPORT_MARK_FOLDER_ITEM_COMBI' and SOURCESYSTEMID = 1 ;

Update DW.CONTROL.LOADPROCESS set 
ISRESTRICTED = TRUE, 
RESTRICTEDCOLUMNNAME = 'REPORT_MARK_FOLDER_ID',
RESTRICTEDTABLENAME = 'CUSTOMER_RESTRICTED_DATA',
EXPRESSIONS  = 'SELECT REPORT_MARK_FOLDER_ID from ODS_GRS_NO.DBO.CUSTOMER_RESTRICTED_DATA a,STG_GRS_NO.DBO.GRSR_CUSTOMER_REPORT_MARK_FOLDER b
where  b.CUSTOMER_ID =a.CUSTOMER_ID and a.SOURCE_SYSTEM_NAME = ''GRS_NO''',
RESTRICTEDTABLE_RANK=3
Where ODSTABLENAME = 'REPORT_MARK_FOLDER_ITEM_EMP' and SOURCESYSTEMID = 1 ;

Update DW.CONTROL.LOADPROCESS set 
ISRESTRICTED = TRUE, 
RESTRICTEDCOLUMNNAME = 'REPORT_MARK_FOLDER_ID',
RESTRICTEDTABLENAME = 'CUSTOMER_RESTRICTED_DATA',
EXPRESSIONS  = 'SELECT REPORT_MARK_FOLDER_ID from ODS_GRS_NO.DBO.CUSTOMER_RESTRICTED_DATA a,STG_GRS_NO.DBO.GRSR_CUSTOMER_REPORT_MARK_FOLDER b
where  b.CUSTOMER_ID =a.CUSTOMER_ID and a.SOURCE_SYSTEM_NAME = ''GRS_NO''',
RESTRICTEDTABLE_RANK=3
Where ODSTABLENAME = 'REPORT_MARK_FOLDER_ITEM_GD' and SOURCESYSTEMID = 1 ;




--- GUARD_OBJECT	CUSTOMER_ID

Update DW.CONTROL.LOADPROCESS set 
ISRESTRICTED = TRUE, 
RESTRICTEDCOLUMNNAME = 'GUARD_ORDER_ID',
RESTRICTEDTABLENAME = 'CUSTOMER_RESTRICTED_DATA',
EXPRESSIONS  = 'SELECT GUARD_ORDER_ID from ODS_GRS_NO.DBO.CUSTOMER_RESTRICTED_DATA a,STG_GRS_NO.DBO.GUARD_OBJECT b
where  b.CUSTOMER_ID =a.CUSTOMER_ID and a.SOURCE_SYSTEM_NAME = ''GRS_NO''',
RESTRICTEDTABLE_RANK=3
Where ODSTABLENAME = 'GUARD_ORDER' and SOURCESYSTEMID = 1 ;

Update DW.CONTROL.LOADPROCESS set 
ISRESTRICTED = TRUE, 
RESTRICTEDCOLUMNNAME = 'GUARD_ORDER_ID',
RESTRICTEDTABLENAME = 'CUSTOMER_RESTRICTED_DATA',
EXPRESSIONS  = 'SELECT GUARD_ORDER_ID from ODS_GRS_NO.DBO.CUSTOMER_RESTRICTED_DATA a,STG_GRS_NO.DBO.GUARD_OBJECT b
where  b.CUSTOMER_ID =a.CUSTOMER_ID and a.SOURCE_SYSTEM_NAME = ''GRS_NO''',
RESTRICTEDTABLE_RANK=3
Where ODSTABLENAME = 'GUARD_ORDER_CULTURE' and SOURCESYSTEMID = 1 ;

Update DW.CONTROL.LOADPROCESS set 
ISRESTRICTED = TRUE, 
RESTRICTEDCOLUMNNAME = 'GUARD_ORDER_ID',
RESTRICTEDTABLENAME = 'CUSTOMER_RESTRICTED_DATA',
EXPRESSIONS  = 'SELECT GUARD_ORDER_ID from ODS_GRS_NO.DBO.CUSTOMER_RESTRICTED_DATA a,STG_GRS_NO.DBO.GUARD_OBJECT b
where  b.CUSTOMER_ID =a.CUSTOMER_ID and a.SOURCE_SYSTEM_NAME = ''GRS_NO''',
RESTRICTEDTABLE_RANK=3
Where ODSTABLENAME = 'GUARD_ORDER_ENDTEXT_CULTURE' and SOURCESYSTEMID = 1 ;

/* 
--GUARD_ORDER_RECEIPT table is not in scope 

Update DW.CONTROL.LOADPROCESS set 
ISRESTRICTED = TRUE, 
RESTRICTEDCOLUMNNAME = 'GUARD_ORDER_ID',
RESTRICTEDTABLENAME = 'CUSTOMER_RESTRICTED_DATA',
EXPRESSIONS  = 'SELECT GUARD_ORDER_ID from ODS_GRS_NO.DBO.CUSTOMER_RESTRICTED_DATA a,STG_GRS_NO.DBO.GUARD_OBJECT b
where  b.CUSTOMER_ID =a.CUSTOMER_ID and a.SOURCE_SYSTEM_NAME = ''GRS_NO''',
RESTRICTEDTABLE_RANK=3
Where ODSTABLENAME = 'GUARD_ORDER_RECEIPT' and SOURCESYSTEMID = 1 ; */



