﻿--
--
/
DELETE ALLCODE WHERE CDNAME = 'LMTYP';
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('CF','LMTYP','LN','Tín dụng',0,'Y','Loan');
COMMIT;
/
