﻿DELETE FROM filemaster WHERE FILECODE = 'I042';

INSERT INTO filemaster (EORI,FILECODE,FILENAME,FILEPATH,TABLENAME,SHEETNAME,ROWTITLE,DELTD,EXTENTION,PAGE,PROCNAME,PROCFILLTER,OVRRQD,MODCODE,RPTID,CMDCODE) 
VALUES('T','I042','Import đối chiều DSKH từ file',NULL,'CFCOMPARE2FILE','1',1,'N','.xls',100,NULL,'PR_FILE_CFCOMPARE2FILE','Y','CF',NULL,'CF');

COMMIT;
