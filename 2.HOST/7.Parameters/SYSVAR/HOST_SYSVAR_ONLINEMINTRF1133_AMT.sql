﻿--
--
/
DELETE SYSVAR WHERE VARNAME = 'ONLINEMINTRF1133_AMT';
INSERT INTO SYSVAR (GRNAME,VARNAME,VARVALUE,VARDESC,EN_VARDESC,EDITALLOW)
VALUES ('SYSTEM','ONLINEMINTRF1133_AMT','100000','So tien chuyen khoan ra ngan hang bang CMT','So tien chuyen khoan ra ngan hang bang CMT','N');
COMMIT;
/
