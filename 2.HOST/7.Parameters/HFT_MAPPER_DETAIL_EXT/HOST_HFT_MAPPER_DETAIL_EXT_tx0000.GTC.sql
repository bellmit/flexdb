﻿--
--
/
DELETE HFT_MAPPER_EXT WHERE FO_KEY = 'tx0000.GTC';
INSERT INTO HFT_MAPPER_EXT (AUTOID,BPS_KEY_FIELD,BPS_KEY_VALUE,FO_FIELD,FO_KEY)
VALUES (11,'p_functionname|p_exectype|p_timetype','PLACEORDER|NS|G','MSGTYPE','tx0000.GTC');
COMMIT;
/
--
--
/
DELETE HFT_MAPPER_DETAIL WHERE FO_KEY = 'tx0000.GTC';
INSERT INTO HFT_MAPPER_DETAIL (AUTOID,FO_KEY,FO_FIELD,FO_FIELD_TYPE,FO_FIELD_VALUE,BPS_FIELD,OPERATOR,VALEXP,ALTERNATIVE_VALUE)
VALUES (42,'tx0000.GTC','VIA','VARCHAR',null,'p_via',null,null,null);
INSERT INTO HFT_MAPPER_DETAIL (AUTOID,FO_KEY,FO_FIELD,FO_FIELD_TYPE,FO_FIELD_VALUE,BPS_FIELD,OPERATOR,VALEXP,ALTERNATIVE_VALUE)
VALUES (41,'tx0000.GTC','USERID','VARCHAR',null,'p_username|p_tlid',null,null,null);
INSERT INTO HFT_MAPPER_DETAIL (AUTOID,FO_KEY,FO_FIELD,FO_FIELD_TYPE,FO_FIELD_VALUE,BPS_FIELD,OPERATOR,VALEXP,ALTERNATIVE_VALUE)
VALUES (40,'tx0000.GTC','TYPECD','VARCHAR',null,'p_pricetype',null,null,null);
INSERT INTO HFT_MAPPER_DETAIL (AUTOID,FO_KEY,FO_FIELD,FO_FIELD_TYPE,FO_FIELD_VALUE,BPS_FIELD,OPERATOR,VALEXP,ALTERNATIVE_VALUE)
VALUES (39,'tx0000.GTC','SYMBOL','VARCHAR',null,'p_symbol',null,null,null);
INSERT INTO HFT_MAPPER_DETAIL (AUTOID,FO_KEY,FO_FIELD,FO_FIELD_TYPE,FO_FIELD_VALUE,BPS_FIELD,OPERATOR,VALEXP,ALTERNATIVE_VALUE)
VALUES (38,'tx0000.GTC','SUBTYPECD','VARCHAR',null,'p_pricetype',null,null,null);
INSERT INTO HFT_MAPPER_DETAIL (AUTOID,FO_KEY,FO_FIELD,FO_FIELD_TYPE,FO_FIELD_VALUE,BPS_FIELD,OPERATOR,VALEXP,ALTERNATIVE_VALUE)
VALUES (33,'tx0000.GTC','REQUESTID','VARCHAR','0','p_afacctno','SEQ','0',null);
INSERT INTO HFT_MAPPER_DETAIL (AUTOID,FO_KEY,FO_FIELD,FO_FIELD_TYPE,FO_FIELD_VALUE,BPS_FIELD,OPERATOR,VALEXP,ALTERNATIVE_VALUE)
VALUES (37,'tx0000.GTC','QTTY','NUMBER',null,'p_quantity',null,null,null);
INSERT INTO HFT_MAPPER_DETAIL (AUTOID,FO_KEY,FO_FIELD,FO_FIELD_TYPE,FO_FIELD_VALUE,BPS_FIELD,OPERATOR,VALEXP,ALTERNATIVE_VALUE)
VALUES (36,'tx0000.GTC','PRICE','NUMBER',null,'p_quoteprice','**','1000',null);
INSERT INTO HFT_MAPPER_DETAIL (AUTOID,FO_KEY,FO_FIELD,FO_FIELD_TYPE,FO_FIELD_VALUE,BPS_FIELD,OPERATOR,VALEXP,ALTERNATIVE_VALUE)
VALUES (44,'tx0000.GTC','EXPIREDDT','DATE',null,'p_expdate','ISD','yyyy-MM-dd',null);
INSERT INTO HFT_MAPPER_DETAIL (AUTOID,FO_KEY,FO_FIELD,FO_FIELD_TYPE,FO_FIELD_VALUE,BPS_FIELD,OPERATOR,VALEXP,ALTERNATIVE_VALUE)
VALUES (43,'tx0000.GTC','CREATEDDT','DATE',null,'p_effdate','ISD','yyyy-MM-dd',null);
INSERT INTO HFT_MAPPER_DETAIL (AUTOID,FO_KEY,FO_FIELD,FO_FIELD_TYPE,FO_FIELD_VALUE,BPS_FIELD,OPERATOR,VALEXP,ALTERNATIVE_VALUE)
VALUES (35,'tx0000.GTC','CLASSCD','VARCHAR','GTC',null,null,null,null);
INSERT INTO HFT_MAPPER_DETAIL (AUTOID,FO_KEY,FO_FIELD,FO_FIELD_TYPE,FO_FIELD_VALUE,BPS_FIELD,OPERATOR,VALEXP,ALTERNATIVE_VALUE)
VALUES (34,'tx0000.GTC','ACCTNO','VARCHAR',null,'p_afacctno',null,null,null);
COMMIT;
/