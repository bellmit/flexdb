﻿--
--
/
DELETE ALLCODE WHERE CDNAME = 'GRINVESTOR';
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('CF','GRINVESTOR','003','Nước ngoài',2,'Y','Nước ngoài');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('CF','GRINVESTOR','002','Việt kiều',1,'Y','Việt kiều');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('CF','GRINVESTOR','001','Trong nước',0,'Y','Trong nước');
COMMIT;
/