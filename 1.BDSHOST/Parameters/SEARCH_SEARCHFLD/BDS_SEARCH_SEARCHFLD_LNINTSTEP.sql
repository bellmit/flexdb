﻿--
--
/
DELETE SEARCH WHERE SEARCHCODE = 'LNINTSTEP';
insert into SEARCH (SEARCHCODE, SEARCHTITLE, EN_SEARCHTITLE, SEARCHCMDSQL, OBJNAME, FRMNAME, ORDERBYCMDSQL, TLTXCD, CNTRECORD, ROWPERPAGE, AUTOSEARCH, INTERVAL, AUTHCODE, ROWLIMIT, CMDTYPE)
values ('LNINTSTEP', 'Lãi suất bậc thang ưu đãi', 'preferential interest rate', 'SELECT LNS.AUTOID, LNS.LNID, LNS.FVAL, LNS.TVAL, LNS.RATE1, LNS.RATE2, LNS.RATE3, LNS.LNLEVEL FROM LNINTSTEP LNS WHERE 0 = 0 and lns.LNID=<$KEYVAL> order by LNS.LNLEVEL', 'LN.LNINTSTEP', 'frmLNMAST', null, null, null, 50, 'N', 0, null, 'Y', 'T');
COMMIT;
/
--
--
/
DELETE SEARCHFLD WHERE SEARCHCODE = 'LNINTSTEP';
insert into SEARCHFLD (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (1, 'FVAL', 'Từ giá trị', 'N', 'LNINTSTEP', 100, null, '<,<=,=,>=,>,<>', '#,##0', 'Y', 'Y', 'N', 100, null, 'Loan amount', 'N', null, null, 'N', null, null, null, 'N');

insert into SEARCHFLD (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (2, 'TVAL', 'Đến giá trị', 'N', 'LNINTSTEP', 100, null, '<,<=,=,>=,>,<>', '#,##0', 'Y', 'Y', 'N', 100, null, 'Loan amount', 'N', null, null, 'N', null, null, null, 'N');

insert into SEARCHFLD (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (3, 'RATE1', 'Rate1', 'N', 'LNINTSTEP', 100, null, '<,<=,=,>=,>,<>', '#,##0.###0', 'Y', 'Y', 'N', 100, null, 'Loan amount', 'N', null, null, 'N', null, null, null, 'N');

insert into SEARCHFLD (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (4, 'RATE2', 'Rate2', 'N', 'LNINTSTEP', 100, null, '<,<=,=,>=,>,<>', '#,##0.###0', 'Y', 'Y', 'N', 100, null, 'Loan amount', 'N', null, null, 'N', null, null, null, 'N');

insert into SEARCHFLD (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (5, 'RATE3', 'Rate3', 'N', 'LNINTSTEP', 100, null, '<,<=,=,>=,>,<>', '#,##0.###0', 'Y', 'Y', 'N', 100, null, 'Loan amount', 'N', null, null, 'N', null, null, null, 'N');

insert into SEARCHFLD (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (0, 'LNID', 'Mã loại hình', 'N', 'LNINTSTEP', 100, null, '=,<>,<,<=,>=,>', '#,##0', 'N', 'Y', 'N', 100, null, 'Auto ID', 'N', null, null, 'N', null, null, null, 'N');

insert into SEARCHFLD (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (-1, 'AUTOID', 'Mã QL', 'N', 'LNINTSTEP', 100, null, '=,<>,<,<=,>=,>', '#,##0', 'N', 'Y', 'Y', 100, null, 'Auto ID', 'N', null, null, 'N', null, null, null, 'N');

insert into SEARCHFLD (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (10, 'LNLEVEL', 'Level', 'N', 'LNINTSTEP', 100, null, '=,<>,<,<=,>=,>', '#,##0', 'Y', 'Y', 'N', 100, null, 'Auto ID', 'N', null, null, 'N', null, null, null, 'N');

COMMIT;
/
