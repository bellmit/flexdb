﻿--
--
/
DELETE SYSVAR WHERE VARNAME = 'BRPHONEFAX';
INSERT INTO SYSVAR (GRNAME,VARNAME,VARVALUE,VARDESC,EN_VARDESC,EDITALLOW)
VALUES ('SYSTEM','BRPHONEFAX','Điện Thoại: (84.24) 730 35333 -  Fax: (84.24) 377 65928','Branch phone & fax number',null,'N');
COMMIT;
/
