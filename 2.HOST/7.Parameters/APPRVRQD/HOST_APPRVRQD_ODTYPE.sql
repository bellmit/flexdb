﻿--
--
/
DELETE APPRVRQD WHERE OBJNAME = 'ODTYPE';
INSERT INTO APPRVRQD (OBJNAME,RQDSTRING,MAKERID,MAKERDT,APPRVID,APPRVDT,MODNUM)
VALUES ('ODTYPE','ALL',null,null,null,null,'1');
COMMIT;
/