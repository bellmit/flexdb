﻿--
--
/
DELETE SYSVAR WHERE VARNAME = 'HCMBVSTITLE';
INSERT INTO SYSVAR (GRNAME,VARNAME,VARVALUE,VARDESC,EN_VARDESC,EDITALLOW)
VALUES ('DEFINED','HCMBVSTITLE','CHI NHÁNH CÔNG TY CỔ PHẦN CHỨNG KHOÁN BẢO VIỆT (BVSC)','Tiêu đề',null,'N');
COMMIT;
/
