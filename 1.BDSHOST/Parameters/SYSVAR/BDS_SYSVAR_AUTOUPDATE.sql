﻿--
--
/
DELETE SYSVAR WHERE VARNAME = 'AUTOUPDATE';
INSERT INTO SYSVAR (GRNAME,VARNAME,VARVALUE,VARDESC,EN_VARDESC,EDITALLOW)
VALUES ('SYSTEM','AUTOUPDATE','N','Thoi gian search ',null,'N');
COMMIT;
/
