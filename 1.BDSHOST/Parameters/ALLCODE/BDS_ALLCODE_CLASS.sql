﻿--
--
/
DELETE ALLCODE WHERE CDNAME = 'CLASS';
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('CF','CLASS','000','Chưa định nghĩa',4,'Y','Chưa định nghĩa');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('CF','CLASS','005','Tổ chức - VIP',4,'Y','Tổ chức - VIP');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('CF','CLASS','004','Platinum',3,'Y','NĐT cá nhân - VIP');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('CF','CLASS','003','Diamond',2,'Y','NĐT Premium');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('CF','CLASS','002','Gold',1,'Y','NĐT tự do');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('CF','CLASS','001','Silver',0,'Y','NĐT chuyên nghiệp');
COMMIT;
/