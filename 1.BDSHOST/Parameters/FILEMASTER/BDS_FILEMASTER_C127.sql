﻿--
--
/
DELETE FILEMASTER WHERE FILECODE = 'C127';
INSERT INTO FILEMASTER (EORI,FILECODE,FILENAME,FILEPATH,TABLENAME,SHEETNAME,ROWTITLE,DELTD,EXTENTION,PAGE,PROCNAME,PROCFILLTER,OVRRQD,MODCODE,RPTID,CMDCODE)
VALUES ('C','C127','DEPOFEEAMTCV',null,'DEPOFEEAMTCV','1',1,'N','.xls',100,null,null,'N',null,null,null);
COMMIT;
/