﻿--
--
/
DELETE ALLCODE WHERE CDNAME = 'BALTYPE';
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('GL','BALTYPE','C','Dư có',2,'Y','Dư có');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('GL','BALTYPE','D','Dư nợ',1,'Y','Dư nợ');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('GL','BALTYPE','B','Cả hai',0,'Y','Cả hai');
COMMIT;
/
