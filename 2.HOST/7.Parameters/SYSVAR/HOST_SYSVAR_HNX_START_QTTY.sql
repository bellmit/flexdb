﻿--
--
/
DELETE SYSVAR WHERE VARNAME = 'HNX_START_QTTY';
INSERT INTO SYSVAR (GRNAME,VARNAME,VARVALUE,VARDESC,EN_VARDESC,EDITALLOW)
VALUES ('SYSTEM','HNX_START_QTTY','100','Số lượng đặt tối thiểu','HNX: Minimum order size','N');
COMMIT;
/