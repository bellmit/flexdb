﻿--
--
/
DELETE HFT_REMAP_FIELD WHERE BPS_FUNCTION = 'CONFIRM_BL_ORDER';
INSERT INTO HFT_REMAP_FIELD (BPS_MODULE,BPS_FUNCTION,ACTION,FO_FIELD,BPS_FIELD,BPS_FIELD_TYPE,BPS_DEFAULT_VALUE)
VALUES (null,'CONFIRM_BL_ORDER','RENAME','ERRORCODE','p_err_code',null,null);
COMMIT;
/