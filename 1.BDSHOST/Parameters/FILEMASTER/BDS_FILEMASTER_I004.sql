﻿--
--
/
DELETE FILEMASTER WHERE FILECODE = 'I004';
INSERT INTO FILEMASTER (EORI,FILECODE,FILENAME,FILEPATH,TABLENAME,SHEETNAME,ROWTITLE,DELTD,EXTENTION,PAGE,PROCNAME,PROCFILLTER,OVRRQD,MODCODE,RPTID,CMDCODE)
VALUES ('I','I004','Rổ DF',null,'DFBASKETTEMP','1',1,'N','.xls',100,'CAL_DF_BASKET','FILLTER_DF_BASKET','Y',null,null,null);
COMMIT;
/