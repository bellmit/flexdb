﻿--
--
/
DELETE SYSVAR WHERE VARNAME = 'ONLINEACCOPENNUMBER_HCM';
INSERT INTO SYSVAR (GRNAME,VARNAME,VARVALUE,VARDESC,EN_VARDESC,EDITALLOW)
VALUES ('SYSTEM','ONLINEACCOPENNUMBER_HCM','117','Đầu số tài khoản mở Online tại HCM','Đầu số tài khoản mở Online tại HCM','Y');
COMMIT;
/
