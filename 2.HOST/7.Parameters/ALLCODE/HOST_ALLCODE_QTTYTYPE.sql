﻿--
--
/
DELETE ALLCODE WHERE CDNAME = 'QTTYTYPE';
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SE','QTTYTYPE','007','Chứng khoán phong tỏa',7,'Y','Chứng khoán phong tỏa');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SE','QTTYTYPE','006','CK có đk khác',6,'Y','CK có đk khác');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SE','QTTYTYPE','005','CK ưu đãi hoàn lại',5,'Y','CK ưu đãi hoàn lại');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SE','QTTYTYPE','004','CK ưu đãi cổ tức',4,'Y','CK ưu đãi cổ tức');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SE','QTTYTYPE','003','CK ưu đãi biểu quyết',3,'Y','CK ưu đãi biểu quyết');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SE','QTTYTYPE','002','CK hạn chế chuyển nhượng',2,'Y','CK hạn chế chuyển nhượng');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SE','QTTYTYPE','001','CK chuyển nhượng tự do',1,'Y','CK chuyển nhượng tự do');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SE','QTTYTYPE','000','CK giao dịch lô lẻ',0,'Y','CK giao dịch lô lẻ');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SE','QTTYTYPE','008','Phong tỏa ký quỹ phái sinh',8,'Y','Phong tỏa ký quỹ phái sinh');
COMMIT;
/
