﻿--
--
/
DELETE ALLCODE WHERE CDNAME = 'RULETYPE';
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SA','RULETYPE','S','Đơn giản',3,'Y','Đơn giản');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SA','RULETYPE','C','Lũy tiến (Cluster)',2,'Y','Cluster');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SA','RULETYPE','T','Bậc thang',1,'Y','Bậc thang');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SA','RULETYPE','F','Cố định',0,'Y','Cố định');
COMMIT;
/
