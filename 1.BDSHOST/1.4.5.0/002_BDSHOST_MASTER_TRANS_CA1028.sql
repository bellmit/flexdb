﻿-- select * from rptmaster where rptid = 'CA1028';
delete from rptmaster where rptid like 'CA1028';
insert into rptmaster (RPTID, DSN, MODCODE, FONTSIZE, RHEADER, PHEADER, RDETAIL, PFOOTER, RFOOTER, DESCRIPTION, AD_HOC, RORDER, PSIZE, ORIENTATION, STOREDNAME, VISIBLE, AREA, ISLOCAL, CMDTYPE, ISCAREBY, ISPUBLIC, ISAUTO, ORD, AORS, ROWPERPAGE, EN_DESCRIPTION, STYLECODE, TOPMARGIN, LEFTMARGIN, RIGHTMARGIN, BOTTOMMARGIN, SUBRPT, ISCMP, ISDEFAULTDB)
values ('CA1028', 'HOST', 'CA', '12', '5', '5', '60', '5', '5', 'Danh sách chi trả lợi tức chứng quyền (đối chiếu)', 'Y', 1, '1', 'P', 'CA1028', 'Y', 'B', 'N', 'V', 'N', 'N', 'M', '000', 'S', -1, 'List of Payout of the warrant certificate (comparison)', null, 0, 0, 0, 0, 'N', 'N', 'Y');

-- select * from search where searchcode='CA1028';
delete from search where searchcode='CA1028';
insert into search (SEARCHCODE, SEARCHTITLE, EN_SEARCHTITLE, SEARCHCMDSQL, OBJNAME, FRMNAME, ORDERBYCMDSQL, TLTXCD, CNTRECORD, ROWPERPAGE, AUTOSEARCH, INTERVAL, AUTHCODE, ROWLIMIT, CMDTYPE)
values ('CA1028', 'Danh sách chi trả lợi tức chứng quyền (đối chiếu)', 'Summary list of Payout of the warrant certificate (comparison)', 'SELECT * FROM (SELECT CF.CUSTODYCD,MAX(CAS.AUTOID) AUTOID,CAS.CAMASTID,
   MAX(CAS.AFACCTNO) AFACCTNO,MAX(A0.<@CDCONTENT>) CATYPE, MAX(CAS.CODEID) CODEID,
   MAX(A0.CDVAL) CATYPEVALUE, CF.FULLNAME,
   DECODE(SUBSTR(CF.CUSTODYCD,4,1),''F'',MAX(CF.TRADINGCODE),CF.IDCODE) IDCODE ,
   DECODE(SUBSTR(CF.CUSTODYCD,4,1),''F'',MAX(CF.TRADINGCODEDT),CF.IDDATE) IDDATE, MAX(CF.IDPLACE) IDPLACE, MAX(CF.ADDRESS) ADDRESS,
   SUM(CAS.TRADE) BALANCE,SUM(CAS.QTTY) QTTY, SUM(CAS.AMT) AMT, SUM(CAS.AQTTY) AQTTY,
   MAX(CA.REPORTDATE) REPORTDATE,MAX(CA.ACTIONDATE) ACTIONDATE,
   SUM(CAS.AAMT) AAMT, MAX(SYM.SYMBOL) SYMBOL, MAX(A1.<@CDCONTENT>) STATUS, ca.isincode
FROM CASCHD CAS, SBSECURITIES SYM, ALLCODE A0, ALLCODE A1, CAMAST CA, AFMAST AF, CFMAST CF
WHERE A0.CDTYPE = ''CA'' AND A0.CDNAME = ''CATYPE'' AND A0.CDVAL = CA.CATYPE
AND A1.CDTYPE = ''CA'' AND A1.CDNAME = ''CASTATUS'' AND A1.CDVAL = CAS.STATUS
AND CAS.CAMASTID = CA.CAMASTID AND CA.CODEID = SYM.CODEID
AND CAS.DELTD =''N'' AND CA.DELTD=''N'' AND CAS.AFACCTNO= AF.ACCTNO
AND CA.CATYPE = ''028''
AND AF.CUSTID = CF.CUSTID  GROUP BY ca.isincode,CF.CUSTODYCD,CAS.CAMASTID,CF.FULLNAME,CF.IDCODE,CF.IDDATE) WHERE 0=0', 'CASCHD', 'frmCASCHD', null, null, null, 50, 'N', 30, 'NYNNYYYNNY', 'Y', 'T');

-- select * from searchfld where searchcode='CA1028';
delete from searchfld where searchcode='CA1028';
insert into searchfld (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (-10, 'ISINCODE', 'Mã ISIN', 'C', 'CA1028', 100, null, 'LIKE,=', null, 'Y', 'Y', 'N', 120, null, 'ISIN code', 'N', null, null, 'N', null, null, null, 'N');

insert into searchfld (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (-5, 'CAMASTID', 'Mã TH quyền', 'C', 'CA1028', 100, null, 'LIKE,=', null, 'Y', 'Y', 'N', 120, null, 'CA code', 'N', null, null, 'N', null, null, null, 'N');

insert into searchfld (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (-4, 'REPORTDATE', 'Ngày chốt', 'D', 'CA1028', 100, null, 'LIKE,=', null, 'Y', 'Y', 'N', 100, null, 'Report date', 'N', null, null, 'N', null, null, null, 'N');

insert into searchfld (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (-1, 'CUSTODYCD', 'Số lưu ký', 'C', 'CA1028', 100, null, 'LIKE,=', null, 'Y', 'Y', 'N', 120, null, 'Custody code', 'N', null, null, 'N', null, null, '16', 'Y');

insert into searchfld (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (0, 'AUTOID', 'Số tự tăng', 'C', 'CA1028', 100, null, '<,<=,=,>=,>', null, 'N', 'N', 'Y', 100, null, 'Auto ID', 'N', null, null, 'N', null, null, null, 'N');

insert into searchfld (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (2, 'AFACCTNO', 'Mã tiểu khoản', 'C', 'CA1028', 100, null, 'LIKE,=', '0###-#####0', 'N', 'N', 'N', 100, null, 'Sub account', 'N', null, null, 'N', null, null, null, 'N');

insert into searchfld (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (3, 'FULLNAME', 'Tên đầy đủ', 'C', 'CA1028', 250, null, 'LIKE,=', null, 'Y', 'Y', 'N', 250, null, 'Full name', 'N', null, null, 'N', null, null, null, 'N');

insert into searchfld (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (4, 'IDCODE', 'Số CMT', 'C', 'CA1028', 100, null, 'LIKE,=', null, 'Y', 'Y', 'N', 100, null, 'ID code', 'N', null, null, 'N', null, null, null, 'N');

insert into searchfld (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (5, 'IDDATE', 'Ngày cấp', 'D', 'CA1028', 100, null, 'LIKE,=', null, 'Y', 'Y', 'N', 100, null, 'Issued date', 'N', null, null, 'N', null, null, null, 'N');

insert into searchfld (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (6, 'SYMBOL', 'Chứng khoán', 'C', 'CA1028', 100, null, 'LIKE,=', null, 'Y', 'Y', 'N', 80, null, 'Symbol', 'N', null, null, 'N', null, null, null, 'N');

insert into searchfld (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (7, 'CATYPE', 'Loại TH quyền', 'C', 'CA1028', 100, null, 'LIKE,=', null, 'Y', 'Y', 'N', 100, 'SELECT CDVAL VALUE, CDCONTENT DISPLAY, EN_CDCONTENT EN_DISPLAY FROM ALLCODE WHERE CDTYPE = ''CA''
AND CDNAME = ''CATYPE'' AND CDUSER=''Y''  ORDER BY LSTODR', 'CA type', 'N', null, null, 'N', null, null, null, 'N');

insert into searchfld (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (8, 'STATUS', 'Trạng thái', 'C', 'CA1028', 100, null, 'LIKE,=', null, 'Y', 'Y', 'N', 80, 'SELECT CDVAL VALUE, CDCONTENT DISPLAY, EN_CDCONTENT EN_DISPLAY FROM ALLCODE WHERE CDTYPE = ''CA'' AND CDNAME = ''CASTATUS'' ORDER BY LSTODR', 'Status', 'N', null, null, 'N', null, null, null, 'N');

insert into searchfld (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (9, 'CODEID', 'Chứng khoán', 'C', 'CA1028', 100, null, 'LIKE,=', null, 'N', 'N', 'N', 100, null, 'Symbol', 'N', null, null, 'N', null, null, null, 'N');

insert into searchfld (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (10, 'BALANCE', 'Số CK ĐK', 'N', 'CA1028', 100, null, '<,<=,=,>=,>', '#,##0', 'Y', 'Y', 'N', 120, null, 'Register quantity', 'N', null, null, 'N', null, null, '3', 'N');

insert into searchfld (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (11, 'QTTY', 'Số lượng', 'N', 'CA1028', 100, null, '<,<=,=,>=,>', '#,##0', 'N', 'N', 'N', 100, null, 'Quantity', 'N', null, null, 'N', null, null, null, 'N');

insert into searchfld (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (12, 'AMT', 'Số tiền', 'N', 'CA1028', 100, null, '<,<=,=,>=,>', '#,##0', 'N', 'N', 'N', 100, null, 'Amount', 'N', null, null, 'N', null, null, null, 'N');


commit;

