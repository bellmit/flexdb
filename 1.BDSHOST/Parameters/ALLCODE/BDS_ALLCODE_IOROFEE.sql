﻿--
--
/
DELETE ALLCODE WHERE CDNAME = 'IOROFEE';
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SA','IOROFEE','0','Phí trong',1,'Y','Phí trong');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SA','IOROFEE','1','Phí ngoài',0,'Y','Phí ngoài');
COMMIT;
/
