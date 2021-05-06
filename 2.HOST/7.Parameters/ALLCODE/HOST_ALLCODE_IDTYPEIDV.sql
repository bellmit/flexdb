﻿--
--
/
DELETE ALLCODE WHERE CDNAME = 'IDTYPEIDV';
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('CF','IDTYPEIDV','009','Trading code',9,'Y','Trading code');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('CF','IDTYPEIDV','004','Khác',7,'Y','Khác');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('CF','IDTYPEIDV','006','Mã số thuế',5,'Y','Mã số thuế');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('CF','IDTYPEIDV','005','Giấy phép KD',4,'Y','Giấy phép KD');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('CF','IDTYPEIDV','003','Giấy phép LX',2,'Y','Giấy phép LX');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('CF','IDTYPEIDV','002','Hộ chiếu',1,'Y','Hộ chiếu');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('CF','IDTYPEIDV','001','CMND',0,'Y','CMND');
COMMIT;
/