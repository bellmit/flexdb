﻿--
--
/
DELETE ALLCODE WHERE CDNAME = 'INTFRQ';
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('TD','INTFRQ','Y','Năm',5,'Y','Yearly');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('TD','INTFRQ','H','Nửa năm',4,'Y','Haft-year');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('TD','INTFRQ','Q','Hàng quý',3,'Y','Quaterly');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('TD','INTFRQ','M','Hàng tháng',2,'Y','Monthly');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('TD','INTFRQ','A','Trả trước',1,'Y','Advanced');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('TD','INTFRQ','L','Cuối kỳ',0,'Y','Lumpsum');
COMMIT;
/