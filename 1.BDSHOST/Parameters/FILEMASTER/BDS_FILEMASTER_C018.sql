﻿--
--
/
DELETE FILEMASTER WHERE FILECODE = 'C018';
INSERT INTO FILEMASTER (EORI,FILECODE,FILENAME,FILEPATH,TABLENAME,SHEETNAME,ROWTITLE,DELTD,EXTENTION,PAGE,PROCNAME,PROCFILLTER,OVRRQD,MODCODE,RPTID,CMDCODE)
VALUES ('D','C018','Cfcontact',null,'CFCONTACTCV','1',1,'N','.xls',100,null,null,'N',null,null,null);
COMMIT;
/
