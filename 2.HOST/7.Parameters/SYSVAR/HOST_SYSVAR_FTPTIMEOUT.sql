﻿--
--
/
DELETE SYSVAR WHERE VARNAME = 'FTPTIMEOUT';
INSERT INTO SYSVAR (GRNAME,VARNAME,VARVALUE,VARDESC,EN_VARDESC,EDITALLOW)
VALUES ('SYSTEM','FTPTIMEOUT','60000','Thời gian timeout(minisecond)','Timeout (minisecond)','Y');
COMMIT;
/
