﻿--
--
/
DELETE HFT_MAPPER_DETAIL WHERE FO_KEY = 'tx6004';
INSERT INTO HFT_MAPPER_DETAIL (AUTOID,FO_KEY,FO_FIELD,FO_FIELD_TYPE,FO_FIELD_VALUE,BPS_FIELD,OPERATOR,VALEXP,ALTERNATIVE_VALUE)
VALUES (105,'tx6004','SYMBOL','VARCHAR',null,'SYMBOL',null,null,null);
INSERT INTO HFT_MAPPER_DETAIL (AUTOID,FO_KEY,FO_FIELD,FO_FIELD_TYPE,FO_FIELD_VALUE,BPS_FIELD,OPERATOR,VALEXP,ALTERNATIVE_VALUE)
VALUES (104,'tx6004','CUSTODYCD','VARCHAR',null,'CUSTODYCD|p_custodycd',null,null,null);
INSERT INTO HFT_MAPPER_DETAIL (AUTOID,FO_KEY,FO_FIELD,FO_FIELD_TYPE,FO_FIELD_VALUE,BPS_FIELD,OPERATOR,VALEXP,ALTERNATIVE_VALUE)
VALUES (103,'tx6004','ACCTNO','VARCHAR',null,'AFACCTNO|p_afacctno',null,null,null);
COMMIT;
/
