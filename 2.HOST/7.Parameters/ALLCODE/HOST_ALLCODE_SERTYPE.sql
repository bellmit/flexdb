﻿--
--
/
DELETE ALLCODE WHERE CDNAME = 'SERTYPE';
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('AF','SERTYPE','001','Đăng ký Broker',1,'Y','Đăng ký Broker');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('AF','SERTYPE','000','Đăng ký GDKQ',0,'Y','Đăng ký GDKQ');
COMMIT;
/
