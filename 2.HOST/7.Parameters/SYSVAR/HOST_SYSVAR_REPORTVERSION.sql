﻿--
--
/
DELETE SYSVAR WHERE VARNAME = 'REPORTVERSION';
INSERT INTO SYSVAR (GRNAME,VARNAME,VARVALUE,VARDESC,EN_VARDESC,EDITALLOW)
VALUES ('SYSTEM','REPORTVERSION','reports.6.5.0.0017.0012','PhiÃªn báº£n má»›i nháº¥t cá»§a Report',null,'N');
COMMIT;
/
