﻿--
--
/
DELETE FILEMASTER WHERE FILECODE = 'I020';
INSERT INTO FILEMASTER (EORI,FILECODE,FILENAME,FILEPATH,TABLENAME,SHEETNAME,ROWTITLE,DELTD,EXTENTION,PAGE,PROCNAME,PROCFILLTER,OVRRQD,MODCODE,RPTID,CMDCODE)
VALUES ('I','I020','Import chuyển chứng khoán lẻ giữa các tiểu khoản cùng tài khoản',null,'TBLTRFSTOCK','1',1,'N','.xls',100,'pr_trfstock',null,'N','SE','SE2282',null);
COMMIT;
/