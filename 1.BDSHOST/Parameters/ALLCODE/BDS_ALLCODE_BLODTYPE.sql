﻿--
--
/
DELETE allcode WHERE CDTYPE = 'OD' AND CDNAME = 'BLODTYPE';
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','BLODTYPE','1','Direct',0,'Y','Direct');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','BLODTYPE','2','Any',1,'N','Any');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','BLODTYPE','3','Manual',2,'Y','Manual');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','BLODTYPE','4','BrokerQL',3,'N','BrokerQL');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','BLODTYPE','5','Broker',4,'Y','Broker');
COMMIT;
/
