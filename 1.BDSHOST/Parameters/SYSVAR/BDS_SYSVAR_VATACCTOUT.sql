﻿--
--
/
DELETE SYSVAR WHERE VARNAME = 'VATACCTOUT';
INSERT INTO SYSVAR (GRNAME,VARNAME,VARVALUE,VARDESC,EN_VARDESC,EDITALLOW)
VALUES ('SYSTEM','VATACCTOUT','000100333110000','GL VAT account output','Tai khoan GL thue VAT dau ra','N');
COMMIT;
/