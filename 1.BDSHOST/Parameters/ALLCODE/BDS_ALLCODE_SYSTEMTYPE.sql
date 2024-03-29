﻿--
--
/
DELETE ALLCODE WHERE CDNAME = 'SYSTEMTYPE';
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SY','SYSTEMTYPE','SYSTEM','Nhóm Margin Hệ Thống',9,'Y','Nhóm Margin Hệ Thống');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SY','SYSTEMTYPE','ADTYPE','Loại hình ứng trước (AD)',8,'N','Loại hình ứng trước AD');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SY','SYSTEMTYPE','DFTYPE','Loại hình cầm cố/forward (DF)',7,'N','Loại hình cầm cố/forward DF');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SY','SYSTEMTYPE','LNTYPE','Loại hình tín dụng (LN)',6,'N','Loại hình tín dụng LN');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SY','SYSTEMTYPE','CLTYPE','Loại hình tài sản thế chấp (CL)',5,'N','Loại hình tài sản thế chấp CL');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SY','SYSTEMTYPE','MRTYPE','Loại hình giao dịch ký quỹ (MR)',4,'N','Loại hình giao dịch ký quỹ MR');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SY','SYSTEMTYPE','ODTYPE','Loại hình lệnh (OD)',3,'N','Loại hình lệnh OD');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SY','SYSTEMTYPE','SETYPE','Loại hình chứng khoán lưu ký (SE)',2,'N','Loại hình chứng khoán lưu ký SE');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SY','SYSTEMTYPE','CITYPE','Loại hình tiền giao dịch (CI)',1,'N','Loại hình tiền giao dịch CI');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SY','SYSTEMTYPE','AFTYPE','Loại hình tiểu khoản giao dịch (AF)',0,'Y','Loại hình tiểu khoản giao dịch AF');
COMMIT;
/
