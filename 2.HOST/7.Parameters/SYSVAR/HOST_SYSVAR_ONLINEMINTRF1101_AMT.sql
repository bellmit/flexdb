﻿--
--
/
DELETE SYSVAR WHERE VARNAME = 'ONLINEMINTRF1101_AMT';
INSERT INTO SYSVAR (GRNAME,VARNAME,VARVALUE,VARDESC,EN_VARDESC,EDITALLOW)
VALUES ('SYSTEM','ONLINEMINTRF1101_AMT','100000','So tien chuyen khoan ra ngan hang toi thieu','So tien chuyen khoan ra ngan hang toi thieu','Y');
COMMIT;
/
