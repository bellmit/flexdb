﻿--
--
/
DELETE ALLCODE WHERE CDNAME = 'MASTER';
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('GL','MASTER','N','No',1,'Y','No');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('GL','MASTER','Y','Yes',0,'Y','Yes');
COMMIT;
/
