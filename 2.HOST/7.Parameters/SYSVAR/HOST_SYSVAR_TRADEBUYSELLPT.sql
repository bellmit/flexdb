﻿--
--
/
DELETE SYSVAR WHERE VARNAME = 'TRADEBUYSELLPT';
INSERT INTO SYSVAR (GRNAME,VARNAME,VARVALUE,VARDESC,EN_VARDESC,EDITALLOW)
VALUES ('SYSTEM','TRADEBUYSELLPT','Y','Neu Y thi cho phep dat lenh thoa thuan doi ung ',null,'N');
COMMIT;
/