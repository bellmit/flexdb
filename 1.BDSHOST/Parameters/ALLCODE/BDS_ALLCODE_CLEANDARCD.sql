﻿--
--
/
DELETE ALLCODE WHERE CDNAME = 'CLEANDARCD';
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('RP','CLEANDARCD','B','Doanh nghiệp',1,'Y','Doanh nghiệp');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('RP','CLEANDARCD','N','Thông thường',0,'Y','Thông thường');
COMMIT;
/
