﻿--
--
/
DELETE ALLCODE WHERE CDNAME = 'DEALSTATUS';
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('DF','DEALSTATUS','C','Hoàn tất',5,'Y','Hoàn tất');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('DF','DEALSTATUS','A','Đã giải ngân',4,'Y','Đã giải ngân');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('DF','DEALSTATUS','R','Deal bị huỷ',3,'Y','Deal bị huỷ');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('DF','DEALSTATUS','N','Chờ gửi trung tâm',2,'Y','Chờ gửi trung tâm');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('DF','DEALSTATUS','P','Chờ giải ngân',1,'Y','Chờ giải ngân');
COMMIT;
/
