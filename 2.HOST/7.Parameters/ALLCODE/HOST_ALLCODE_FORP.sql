﻿--
--
/
DELETE ALLCODE WHERE CDNAME = 'FORP';
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SA','FORP','P','Phần trăm',1,'Y','Phần trăm');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SA','FORP','F','Cố định',0,'Y','Cố định');
COMMIT;
/