﻿--
--
/
DELETE ALLCODE WHERE CDNAME = 'ALLOCTYP';
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('PR','ALLOCTYP','M','Đã đánh dấu',1,'Y','Marked');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('PR','ALLOCTYP','T','Tạm thời',0,'Y','Temporary');
COMMIT;
/