﻿--
--
/
DELETE allcode WHERE CDTYPE = 'OD' AND CDNAME = 'BLMAPSTATUS';
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','BLMAPSTATUS','P','New',-1,'Y','New');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','BLMAPSTATUS','F','Đã gửi vào Flex',1,'Y','Sent to Flex');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','BLMAPSTATUS','R','Từ chối',2,'Y','Reject');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','BLMAPSTATUS','D','Đã hủy',3,'Y','Cancel');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','BLMAPSTATUS','M','Đã sửa',4,'Y','Replaced');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','BLMAPSTATUS','C','Đang hủy',5,'Y','Canceling');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','BLMAPSTATUS','A','Đang sửa',6,'Y','Replacing');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','BLMAPSTATUS','E','Hết hạn',7,'Y','Expired');
COMMIT;
/