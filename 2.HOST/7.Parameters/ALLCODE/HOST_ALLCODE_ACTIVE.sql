﻿--
--
/
DELETE ALLCODE WHERE CDNAME = 'ACTIVE';
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SA','ACTIVE','N','Không hoạt động',1,'Y','Không hoạt động');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SA','ACTIVE','Y','Hoạt động',0,'Y','Hoạt động');
COMMIT;
/
