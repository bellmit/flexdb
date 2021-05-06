﻿--
--
/
DELETE HFT_REMAP_FIELD WHERE BPS_FUNCTION = 'BD_SP_GET_ORDERS_BY_USER';
INSERT INTO HFT_REMAP_FIELD (BPS_MODULE,BPS_FUNCTION,ACTION,FO_FIELD,BPS_FIELD,BPS_FIELD_TYPE,BPS_DEFAULT_VALUE)
VALUES (null,'BD_SP_GET_ORDERS_BY_USER','RENAME','STATUS','FOSTATUS',null,null);
INSERT INTO HFT_REMAP_FIELD (BPS_MODULE,BPS_FUNCTION,ACTION,FO_FIELD,BPS_FIELD,BPS_FIELD_TYPE,BPS_DEFAULT_VALUE)
VALUES (null,'BD_SP_GET_ORDERS_BY_USER','RENAME','ORSTATUSVALUE','STATUS',null,null);
INSERT INTO HFT_REMAP_FIELD (BPS_MODULE,BPS_FUNCTION,ACTION,FO_FIELD,BPS_FIELD,BPS_FIELD_TYPE,BPS_DEFAULT_VALUE)
VALUES (null,'BD_SP_GET_ORDERS_BY_USER','ADD',null,'LIMITPRICE','NUMBER','0');
INSERT INTO HFT_REMAP_FIELD (BPS_MODULE,BPS_FUNCTION,ACTION,FO_FIELD,BPS_FIELD,BPS_FIELD_TYPE,BPS_DEFAULT_VALUE)
VALUES (null,'BD_SP_GET_ORDERS_BY_USER','ADD',null,'QUOTEQTTY','NUMBER','0');
INSERT INTO HFT_REMAP_FIELD (BPS_MODULE,BPS_FUNCTION,ACTION,FO_FIELD,BPS_FIELD,BPS_FIELD_TYPE,BPS_DEFAULT_VALUE)
VALUES ('BOData','BD_SP_GET_ORDERS_BY_USER','COPY','EXECTYPE','DESC_EXECTYPE',null,null);
INSERT INTO HFT_REMAP_FIELD (BPS_MODULE,BPS_FUNCTION,ACTION,FO_FIELD,BPS_FIELD,BPS_FIELD_TYPE,BPS_DEFAULT_VALUE)
VALUES (null,'BD_SP_GET_ORDERS_BY_USER','CONVERT','ORDERQTTY',null,'NUMBER',null);
INSERT INTO HFT_REMAP_FIELD (BPS_MODULE,BPS_FUNCTION,ACTION,FO_FIELD,BPS_FIELD,BPS_FIELD_TYPE,BPS_DEFAULT_VALUE)
VALUES (null,'BD_SP_GET_ORDERS_BY_USER','RENAME','SEQNUM','ODTIMESTAMP',null,null);
INSERT INTO HFT_REMAP_FIELD (BPS_MODULE,BPS_FUNCTION,ACTION,FO_FIELD,BPS_FIELD,BPS_FIELD_TYPE,BPS_DEFAULT_VALUE)
VALUES (null,'BD_SP_GET_ORDERS_BY_USER','CONVERT','QUOTEPRICE',null,'NUMBER',null);
COMMIT;
/