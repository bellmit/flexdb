﻿--
--
/
DELETE SYSVAR WHERE VARNAME = 'CLEARDAY';
INSERT INTO SYSVAR (GRNAME,VARNAME,VARVALUE,VARDESC,EN_VARDESC,EDITALLOW)
VALUES ('OD','CLEARDAY','2','Chu kỳ thanh toán','Payment cycle','N');
COMMIT;
/
