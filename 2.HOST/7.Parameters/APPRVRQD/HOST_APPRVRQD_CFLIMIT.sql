﻿--
--
/
DELETE APPRVRQD WHERE OBJNAME = 'CFLIMIT';
INSERT INTO APPRVRQD (OBJNAME,RQDSTRING,MAKERID,MAKERDT,APPRVID,APPRVDT,MODNUM)
VALUES ('CFLIMIT','ALL',null,null,null,null,'1');
COMMIT;
/
