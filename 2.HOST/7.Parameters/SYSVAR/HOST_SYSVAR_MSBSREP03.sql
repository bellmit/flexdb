﻿--
--
/
DELETE SYSVAR WHERE VARNAME = 'MSBSREP03';
INSERT INTO SYSVAR (GRNAME,VARNAME,VARVALUE,VARDESC,EN_VARDESC,EDITALLOW)
VALUES ('REPRESENT','MSBSREP03','Trần thị Kim Thu','TP. Nghiệp vụ',null,'N');
COMMIT;
/
