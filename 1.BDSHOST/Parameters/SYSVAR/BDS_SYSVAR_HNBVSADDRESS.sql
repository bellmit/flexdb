﻿--
--
/
DELETE SYSVAR WHERE VARNAME = 'HNBVSADDRESS';
INSERT INTO SYSVAR (GRNAME,VARNAME,VARVALUE,VARDESC,EN_VARDESC,EDITALLOW)
VALUES ('DEFINED','HNBVSADDRESS','Số 8 Lê Thái Tổ, Quận Hoàn Kiếm, Hà Nội','Địa chỉ hội sở BVSC',null,'N');
COMMIT;
/
