﻿--
--
/
DELETE ALLCODE WHERE CDNAME = 'MARGINALLOW';
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('CF','MARGINALLOW','N','Không',1,'Y','No');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('CF','MARGINALLOW','Y','Có',0,'Y','Yes');
COMMIT;
/