﻿--
--
/
DELETE SYSVAR WHERE VARNAME = 'ADVALCELINE_MAX';
INSERT INTO SYSVAR (GRNAME,VARNAME,VARVALUE,VARDESC,EN_VARDESC,EDITALLOW)
VALUES ('SYSTEM','ADVALCELINE_MAX','160000000000','Hạn mức bảo lãnh toàn công ty','Hạn mức bảo lãnh toàn công ty','Y');
COMMIT;
/