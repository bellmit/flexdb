﻿--
--
/
DELETE SYSVAR WHERE VARNAME = 'HNBVSPHONE';
INSERT INTO SYSVAR (GRNAME,VARNAME,VARVALUE,VARDESC,EN_VARDESC,EDITALLOW)
VALUES ('DEFINED','HNBVSPHONE','04 - 3 928 8080','Điện thoại hội sở',null,'N');
COMMIT;
/
