﻿--
--
/
DELETE HFT_MAPPER_DETAIL WHERE FO_KEY = 'fe7000';
INSERT INTO HFT_MAPPER_DETAIL (AUTOID,FO_KEY,FO_FIELD,FO_FIELD_TYPE,FO_FIELD_VALUE,BPS_FIELD,OPERATOR,VALEXP,ALTERNATIVE_VALUE)
VALUES (344,'fe7000','BLORDERID','VARCHAR','','p_blOrderId','','',null);
INSERT INTO HFT_MAPPER_DETAIL (AUTOID,FO_KEY,FO_FIELD,FO_FIELD_TYPE,FO_FIELD_VALUE,BPS_FIELD,OPERATOR,VALEXP,ALTERNATIVE_VALUE)
VALUES (345,'fe7000','PRICECHKTYPE','VARCHAR','','p_priceChkType','','',null);
INSERT INTO HFT_MAPPER_DETAIL (AUTOID,FO_KEY,FO_FIELD,FO_FIELD_TYPE,FO_FIELD_VALUE,BPS_FIELD,OPERATOR,VALEXP,ALTERNATIVE_VALUE)
VALUES (346,'fe7000','TLID','VARCHAR','','p_tellerId','','',null);
COMMIT;
/
