﻿delete from search where searchcode ='ODPTREPO1';

insert into search (SEARCHCODE, SEARCHTITLE, EN_SEARCHTITLE, SEARCHCMDSQL, OBJNAME, FRMNAME, ORDERBYCMDSQL, TLTXCD, CNTRECORD, ROWPERPAGE, AUTOSEARCH, INTERVAL, AUTHCODE, ROWLIMIT, CMDTYPE)
values ('ODPTREPO1', 'Lệnh thỏa thuận Repo', 'Order Repo', 'SELECT T.ORDERID , T.TXDATE,  T.EXPTDATE, T.CUSTODYCD, T.AFACCTNO, CF.FULLNAME, T.EXECTYPE,
SB.SYMBOL, T.ORDERQTTY, T.EXECQTTY , T.QUOTEPRICE , T.PRICE2 , T.REF_CUSTODYCD, T.REF_AFACCTNO,
CASE WHEN INSTR(OD.PTDEAL, ''F'') >0 THEN ''1'' ELSE ''2'' END FIRM
 FROM TBL_ODREPO T, CFMAST CF, SBSECURITIES SB, AFMAST AF, VW_ODMAST_ALL OD
  WHERE  T.CUSTODYCD = CF.CUSTODYCD AND  T.ORDERID =OD.ORDERID
  AND SB.CODEID = T.CODEID AND CF.CUSTID = AF.CUSTID AND AF.ACCTNO = T.AFACCTNO AND OD.REPOTYPE = 1 and T.Orderid2 is null and  INSTR(OD.PTDEAL, ''F'') <> 0 and OD.EXECQTTY > 0', 'ODPTREPO1', 'frmODMAST', 'ORDERID DESC', null, null, 50, 'N', 30, null, 'Y', 'T');
commit;
/
delete from SEARCHFLD where searchcode ='ODPTREPO1';

insert into searchfld (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (0, 'ORDERID', 'Số hiệu lệnh', 'C', 'ODPTREPO1', 100, null, 'LIKE,=', null, 'Y', 'Y', 'Y', 80, null, 'OrderID', 'N', null, null, 'N', null, null, null, 'N');

insert into searchfld (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (1, 'EXPTDATE', 'Ngày đáo hạn', 'D', 'ODPTREPO1', 100, null, '<,<=,=,>=,>,<>', null, 'Y', 'Y', 'N', 100, null, 'EX  date', 'N', null, null, 'N', null, null, null, 'N');

insert into searchfld (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (2, 'FIRM', 'Firms', 'C', 'ODPTREPO1', 100, null, 'LIKE,=', null, 'Y', 'Y', 'N', 80, null, 'Firms', 'N', null, null, 'N', null, null, null, 'N');

insert into searchfld (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (3, 'CUSTODYCD', 'TK lưu ký', 'C', 'ODPTREPO1', 120, 'cccc.cccccc', 'LIKE,=', '_', 'Y', 'Y', 'N', 100, null, 'Custody code', 'N', null, null, 'N', null, null, null, 'N');

insert into searchfld (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (4, 'AFACCTNO', 'Số Tiểu khoản', 'C', 'ODPTREPO1', 100, null, 'LIKE,=', '_', 'Y', 'Y', 'N', 80, null, 'Contract No', 'N', null, null, 'N', null, null, null, 'N');

insert into searchfld (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (5, 'FULLNAME', 'Tên khách hàng', 'C', 'ODPTREPO1', 100, null, 'LIKE,=', null, 'Y', 'Y', 'N', 80, null, 'Fullname', 'N', null, null, 'N', null, null, null, 'N');

insert into searchfld (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (6, 'EXECTYPE', 'Loại lệnh', 'C', 'ODPTREPO1', 100, null, 'LIKE,=', null, 'Y', 'Y', 'N', 80, 'SELECT CDVAL VALUE, CDVAL DISPLAY FROM ALLCODE WHERE CDTYPE = ''OD'' AND CDNAME = ''EXECTYPE'' ORDER BY LSTODR', 'Type', 'N', null, null, 'N', null, null, null, 'N');

insert into searchfld (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (7, 'SYMBOL', 'Mã chứng khoán', 'C', 'ODPTREPO1', 100, null, 'LIKE,=', null, 'Y', 'Y', 'N', 80, null, 'Symbol', 'N', null, null, 'N', null, null, null, 'N');

insert into searchfld (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (8, 'ORDERQTTY', 'Số lượng', 'N', 'ODPTREPO1', 100, null, '<,<=,=,>=,>,<>', '#,##0', 'Y', 'N', 'N', 100, null, 'Order quantity', 'N', null, null, 'N', null, null, null, 'N');

insert into searchfld (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (9, 'EXECQTTY', 'Số lượng khóp', 'N', 'ODPTREPO1', 100, null, '<,<=,=,>=,>,<>', '#,##0', 'Y', 'N', 'N', 100, null, 'match quantity', 'N', null, null, 'N', null, null, null, 'N');

insert into searchfld (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (10, 'QUOTEPRICE', 'Giá lần 1', 'N', 'ODPTREPO1', 100, null, '<,<=,=,>=,>,<>', '#,##0.#####0', 'Y', 'Y', 'N', 100, null, 'Order price', 'N', null, null, 'N', null, null, null, 'N');

insert into searchfld (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (11, 'PRICE2', 'Giá lần 2 (dự kiến)', 'N', 'ODPTREPO1', 100, null, '<,<=,=,>=,>,<>', '#,##0.#####0', 'Y', 'Y', 'N', 100, null, 'EX price2', 'N', null, null, 'N', null, null, null, 'N');

insert into searchfld (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (16, 'TXDATE', 'Ngày đặt lệnh', 'D', 'ODPTREPO1', 100, null, '<,<=,=,>=,>,<>', null, 'Y', 'Y', 'N', 100, null, 'Order date', 'N', null, null, 'N', null, null, null, 'N');

insert into searchfld (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (12, 'REF_CUSTODYCD', 'TK LK đối ưng', 'C', 'ODPTREPO1', 120, 'cccc.cccccc', 'LIKE,=', '_', 'Y', 'Y', 'N', 100, null, 'Ref Custody code', 'N', null, null, 'N', null, null, null, 'N');

insert into searchfld (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (13, 'REF_AFACCTNO', 'Số TK đối ứng', 'C', 'ODPTREPO1', 100, null, 'LIKE,=', '_', 'Y', 'Y', 'N', 80, null, 'Ref Contract No', 'N', null, null, 'N', null, null, null, 'N');


commit;
