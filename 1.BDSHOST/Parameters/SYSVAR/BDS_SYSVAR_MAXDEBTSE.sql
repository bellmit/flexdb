﻿--
--
/
DELETE SYSVAR WHERE VARNAME = 'MAXDEBTSE';
INSERT INTO SYSVAR (GRNAME,VARNAME,VARVALUE,VARDESC,EN_VARDESC,EDITALLOW)
VALUES ('MARGIN','MAXDEBTSE','30000000000','Tổng dư nợ tối đa cho 1 mã CK','Max Pool for one security','Y');
COMMIT;
/
