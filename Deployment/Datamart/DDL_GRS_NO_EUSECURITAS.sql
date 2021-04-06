----This file is Created foe EU_MYSECURITAS ROLE only.

----CREATE ROLE
USE ROLE ACCOUNTADMIN;
CREATE ROLE EU_MYSECURITAS;

----CREATE USER
CREATE OR REPLACE USER "xiaohu.chen" password='**********' DEFAULT_ROLE = EU_MYSECURITAS Must_Change_Password = FALSE;

CREATE OR REPLACE USER "timo.halttunen" password='**********' DEFAULT_ROLE = EU_MYSECURITAS Must_Change_Password = FALSE;

CREATE OR REPLACE USER "johan.nedin" password='**********' DEFAULT_ROLE = EU_MYSECURITAS Must_Change_Password = FALSE;
