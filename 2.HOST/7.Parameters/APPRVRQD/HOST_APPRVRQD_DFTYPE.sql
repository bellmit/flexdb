﻿--
--
/
DELETE APPRVRQD WHERE OBJNAME = 'DFTYPE';
INSERT INTO APPRVRQD (OBJNAME,RQDSTRING,MAKERID,MAKERDT,APPRVID,APPRVDT,MODNUM)
VALUES ('DFTYPE','ALL',null,null,null,null,'1');
COMMIT;
/