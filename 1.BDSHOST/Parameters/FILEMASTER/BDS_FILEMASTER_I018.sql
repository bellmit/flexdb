﻿--
--
/
DELETE FILEMASTER WHERE FILECODE = 'I018';
INSERT INTO FILEMASTER (EORI,FILECODE,FILENAME,FILEPATH,TABLENAME,SHEETNAME,ROWTITLE,DELTD,EXTENTION,PAGE,PROCNAME,PROCFILLTER,OVRRQD,MODCODE,RPTID,CMDCODE)
VALUES ('I','I018','Import tài khoản và lưu ký ',null,'TBLCFSE','1',1,'N','.xls',100,'pr_CFSEUpload',null,'N',null,null,null);
COMMIT;
/