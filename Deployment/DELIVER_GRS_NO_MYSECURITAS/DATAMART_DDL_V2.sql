--CREATE USERS 

USE ROLE ACCOUNTADMIN;
CREATE OR REPLACE ROLE SISEU_DATAREADER;
CREATE OR REPLACE ROLE SISEU_DATASCIENCE;
CREATE OR REPLACE ROLE SISEU_MYSECURITAS;

--CREATE OR REPLACE USER SISDS_USER password='********' DEFAULT_ROLE = SISEU_DATAREADER Must_Change_Password = FALSE;  -- PASSWORD SHOULD BE STRONG;
----------
CREATE OR REPLACE USER "SISEU_DS" password='********' DEFAULT_ROLE = SISEU_DATAREADER Must_Change_Password = FALSE;
------------------------------------
CREATE OR REPLACE USER "kriti.paliwal" password='********' DEFAULT_ROLE = SISEU_DATAREADER Must_Change_Password = FALSE;

CREATE OR REPLACE USER "zachary.peterson" password='********' DEFAULT_ROLE = SISEU_DATAREADER Must_Change_Password = FALSE;

CREATE OR REPLACE USER "shuainan.zhao" password='********' DEFAULT_ROLE = SISEU_DATAREADER Must_Change_Password = FALSE;

CREATE OR REPLACE USER "anlai.gao" password='********' DEFAULT_ROLE = SISEU_DATAREADER Must_Change_Password = FALSE;

CREATE OR REPLACE USER "sebastian.nyberg" password='********' DEFAULT_ROLE = SISEU_DATAREADER Must_Change_Password = FALSE;

CREATE OR REPLACE USER "johannes.skog" password='********' DEFAULT_ROLE = SISEU_DATAREADER Must_Change_Password = FALSE;

CREATE OR REPLACE USER "malin.lundqvist" password='********' DEFAULT_ROLE = SISEU_DATAREADER Must_Change_Password = FALSE;

CREATE OR REPLACE USER "henrik.gronholtjensen" password='********' DEFAULT_ROLE = SISEU_DATAREADER Must_Change_Password = FALSE;

CREATE OR REPLACE USER "jonas.alstrom.mortin" password='********' DEFAULT_ROLE = SISEU_DATAREADER Must_Change_Password = FALSE;

CREATE OR REPLACE USER "daniel.sandberg" password='********' DEFAULT_ROLE = SISEU_DATAREADER Must_Change_Password = FALSE;

CREATE OR REPLACE USER "carl.frolund" password='********' DEFAULT_ROLE = SISEU_DATAREADER Must_Change_Password = FALSE;

---------------------------

CREATE OR REPLACE USER "xiaohu.chen" password='********' DEFAULT_ROLE = SISEU_MYSECURITAS Must_Change_Password = FALSE;

CREATE OR REPLACE USER "pawel.grudzien" password='********' DEFAULT_ROLE = SISEU_MYSECURITAS Must_Change_Password = FALSE;

CREATE OR REPLACE USER "jussi.kempinen" password='********' DEFAULT_ROLE = SISEU_DATAREADER Must_Change_Password = FALSE;

CREATE OR REPLACE USER "Alex.bespalko" password='********' DEFAULT_ROLE = SISEU_DATAREADER Must_Change_Password = FALSE;
