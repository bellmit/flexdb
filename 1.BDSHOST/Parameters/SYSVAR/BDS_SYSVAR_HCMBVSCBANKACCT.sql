﻿--
--
/
DELETE SYSVAR WHERE VARNAME = 'HCMBVSCBANKACCT';
INSERT INTO SYSVAR (GRNAME,VARNAME,VARVALUE,VARDESC,EN_VARDESC,EDITALLOW)
VALUES ('DEFINED','HCMBVSCBANKACCT','119.10.00.005143.7','Tài khoản ngân hàng của chi nhánh HCM',null,'N');
COMMIT;
/