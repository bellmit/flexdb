﻿--
--
/
DELETE ALLCODE WHERE CDNAME = 'ECONOMIC';
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SA','ECONOMIC','011','Dịch vụ tài chính',11,'Y','Xây dựng');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SA','ECONOMIC','010','Đại lý bán lẻ',10,'Y','Xây dựng');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SA','ECONOMIC','009','Công nghiệp vận tải',9,'Y','Xây dựng');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SA','ECONOMIC','008','Công nghiệp cơ khí/công nghiệp sản xuất máy  ',8,'Y','Công nghiệp cơ khí/công nghiệp sản xuất máy  ');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SA','ECONOMIC','007','Các nghành công nghiệp chung',7,'Y','Xây dựng');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SA','ECONOMIC','006','Các dịch vụ hỗ trợ',6,'Y','Xây dựng');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SA','ECONOMIC','005','Công nghệ phần mềm và dịch vụ tin học',5,'Y','Xây dựng');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SA','ECONOMIC','004','Bất động sản',4,'Y','Xây dựng');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SA','ECONOMIC','003','Bảo hiểm phi nhân thọ',3,'Y','Xây dựng');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SA','ECONOMIC','002','Bảo hiểm nhân thọ',2,'Y','Xây dựng');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SA','ECONOMIC','001','Bán lẻ dược phẩm và thực phẩm',1,'Y','Tin học và Viễn thông');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SA','ECONOMIC','000','Mặc định',0,'Y','Default');
COMMIT;
/