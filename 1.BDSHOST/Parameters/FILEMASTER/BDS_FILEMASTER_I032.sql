﻿--
--
/
DELETE FILEMASTER WHERE FILECODE = 'I032';
INSERT INTO FILEMASTER (EORI,FILECODE,FILENAME,FILEPATH,TABLENAME,SHEETNAME,ROWTITLE,DELTD,EXTENTION,PAGE,PROCNAME,PROCFILLTER,OVRRQD,MODCODE,RPTID,CMDCODE)
VALUES ('T','I032','Import GD cập nhật số dư CK cho TK của thành viên LK khác (2287)',null,'TBLSE2287','1',1,'N','.xls',100,'PR_FILE_TBLSE2287',null,'N','SE','V_SE2287','OD');
COMMIT;
/