﻿--
--
/
DELETE ALLCODE WHERE CDNAME = 'DTYPE';
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('DF','DTYPE','B','CK LK có điều kiện',2,'Y','Blocked');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('DF','DTYPE','P','Quyền chờ về',1,'Y','Right');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('DF','DTYPE','R','Lệnh khớp',0,'Y','Deal');
COMMIT;
/