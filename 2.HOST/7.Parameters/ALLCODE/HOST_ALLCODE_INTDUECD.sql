﻿--
--
/
DELETE ALLCODE WHERE CDNAME = 'INTDUECD';
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('FN','INTDUECD','Y','Nhập vốn',1,'Y','Nhập vốn');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('FN','INTDUECD','N','Không nhập vốn',0,'Y','Không nhập vốn');
COMMIT;
/
