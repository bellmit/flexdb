﻿--
--
/
DELETE ALLCODE WHERE CDNAME = 'NORP';
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','NORP','P','Thỏa thuận',1,'Y','Thỏa thuận');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','NORP','N','Bình thường',0,'Y','Bình thường');
COMMIT;
/
