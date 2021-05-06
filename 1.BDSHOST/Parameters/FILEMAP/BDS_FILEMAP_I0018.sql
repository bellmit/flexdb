﻿--
--
/
DELETE FILEMAP WHERE FILECODE = 'I0018';
INSERT INTO FILEMAP (FILECODE,FILEROWNAME,TBLROWNAME,TBLROWTYPE,ACCTNOFLD,TBLROWMAXLENGTH,CHANGETYPE,DELTD,DISABLED,VISIBLE,LSTODR,FIELDDESC,SUMAMT)
VALUES ('I0018','DESCRIPTION','DESCRIPTION','C',null,100,'N','N','Y','Y','4','DESCRIPTION','N');
INSERT INTO FILEMAP (FILECODE,FILEROWNAME,TBLROWNAME,TBLROWTYPE,ACCTNOFLD,TBLROWMAXLENGTH,CHANGETYPE,DELTD,DISABLED,VISIBLE,LSTODR,FIELDDESC,SUMAMT)
VALUES ('I0018','PRODUCTTYPE','PRODUCTTYPE','C',null,10,'N','N','Y','Y','3','Loại sản phẩm','N');
INSERT INTO FILEMAP (FILECODE,FILEROWNAME,TBLROWNAME,TBLROWTYPE,ACCTNOFLD,TBLROWMAXLENGTH,CHANGETYPE,DELTD,DISABLED,VISIBLE,LSTODR,FIELDDESC,SUMAMT)
VALUES ('I0018','CUSTODYCD','CUSTODYCD','C',null,20,'N','N','Y','Y','1','Số tài khoản','N');
INSERT INTO FILEMAP (FILECODE,FILEROWNAME,TBLROWNAME,TBLROWTYPE,ACCTNOFLD,TBLROWMAXLENGTH,CHANGETYPE,DELTD,DISABLED,VISIBLE,LSTODR,FIELDDESC,SUMAMT)
VALUES ('I0018','SBTYPE','SBTYPE','C',null,20,'N','N','Y','Y','5','Loại lịch','N');
INSERT INTO FILEMAP (FILECODE,FILEROWNAME,TBLROWNAME,TBLROWTYPE,ACCTNOFLD,TBLROWMAXLENGTH,CHANGETYPE,DELTD,DISABLED,VISIBLE,LSTODR,FIELDDESC,SUMAMT)
VALUES ('I0018','AFACCTNO','AFACCTNO','C',null,20,'N','N','Y','Y','2','Số tiểu khoản','N');
COMMIT;
/