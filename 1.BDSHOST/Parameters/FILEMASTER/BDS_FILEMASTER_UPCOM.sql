﻿--
--
/
DELETE FILEMASTER WHERE FILECODE = 'UPCOM';
INSERT INTO FILEMASTER (EORI,FILECODE,FILENAME,FILEPATH,TABLENAME,SHEETNAME,ROWTITLE,DELTD,EXTENTION,PAGE,PROCNAME,PROCFILLTER,OVRRQD,MODCODE,RPTID,CMDCODE)
VALUES ('I','UPCOM','Import trading result UPCOM',null,'HNXTRADINGRESULT','1',1,'N','.xls',100,'PRC_COMPARE_UPCOMRESULT',null,'N',null,null,null);
COMMIT;
/
