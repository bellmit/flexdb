﻿--
--
/
DELETE ALLCODE WHERE CDNAME = 'APPLSTS';
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('LN','APPLSTS','C','Đóng',3,'Y','Đóng');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('LN','APPLSTS','R','Yêu cầu sửa lại',2,'Y','Yêu cầu sửa lại');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('LN','APPLSTS','A','Hoạt động',1,'Y','Hoạt động');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('LN','APPLSTS','P','Chờ duyệt',0,'Y','Chờ duyệt');
COMMIT;
/
