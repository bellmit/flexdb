﻿--
--
/
DELETE OBJMASTER WHERE OBJNAME = 'LN.LNTYPEXT';
insert into OBJMASTER (MODCODE, OBJNAME, OBJTITLE, EN_OBJTITLE, USEAUTOID, CAREBYCHK, OBJBUTTONS)
values ('LN', 'LN.LNTYPEXT', 'Khai báo lãi suất bậc thang cho KH, nhóm KH', 'Customer loan account management', 'N', 'N', 'NNNNYYY');
COMMIT;
/
--
--
/
DELETE GRMASTER WHERE OBJNAME = 'LN.LNTYPEXT';
insert into GRMASTER (MODCODE, OBJNAME, ODRNUM, GRNAME, GRTYPE, GRBUTTONS, GRCAPTION, EN_GRCAPTION, CAREBYCHK, SEARCHCODE)
values ('LN', 'LN.LNTYPEXT', 0, 'MAIN', 'N', 'NNNNNNNN', 'TT chung', 'Common', 'N', null);

insert into GRMASTER (MODCODE, OBJNAME, ODRNUM, GRNAME, GRTYPE, GRBUTTONS, GRCAPTION, EN_GRCAPTION, CAREBYCHK, SEARCHCODE)
values ('LN', 'LN.LNTYPEXT', 1, 'LNINTSTEP', 'G', 'EEEENNNN', 'Lãi suất bậc thang ưu đãi', 'preferential interest rate', 'N', 'LNINTSTEP');

insert into GRMASTER (MODCODE, OBJNAME, ODRNUM, GRNAME, GRTYPE, GRBUTTONS, GRCAPTION, EN_GRCAPTION, CAREBYCHK, SEARCHCODE)
values ('LN', 'LN.LNTYPEXT', 2, 'CFPREFERENTIAL', 'G', 'EEEENNNN', 'Danh sách KH được hưởng chính sách', 'Customer list is entitled to the policy', 'N', 'CFPREFERENTIAL');
COMMIT;
/
--
--
/
DELETE FLDMASTER WHERE OBJNAME = 'LN.LNTYPEXT';
insert into FLDMASTER (MODCODE, FLDNAME, OBJNAME, DEFNAME, CAPTION, EN_CAPTION, ODRNUM, FLDTYPE, FLDMASK, FLDFORMAT, FLDLEN, LLIST, LCHK, DEFVAL, VISIBLE, DISABLE, MANDATORY, AMTEXP, VALIDTAG, LOOKUP, DATATYPE, INVNAME, FLDSOURCE, FLDDESC, CHAINNAME, PRINTINFO, LOOKUPNAME, SEARCHCODE, SRMODCODE, INVFORMAT, CTLTYPE, RISKFLD, GRNAME, TAGFIELD, TAGVALUE, TAGLIST, TAGQUERY, PDEFNAME, TAGUPDATE, FLDRND, SUBFIELD, PDEFVAL, DEFDESC, DEFPARAM)
values ('LN', 'LNID', 'LN.LNTYPEXT', 'LNID', 'Mã loại hình', 'Actype', 0, 'C', '9999', '9999', 4, null, null, null, 'Y', 'N', 'Y', null, null, 'N', 'C', 'LNID', null, null, null, null, null, null, null, '[0000]', 'M', 'N', 'MAIN', null, null, null, 'N', null, 'Y', null, 'N', null, null, null);

insert into FLDMASTER (MODCODE, FLDNAME, OBJNAME, DEFNAME, CAPTION, EN_CAPTION, ODRNUM, FLDTYPE, FLDMASK, FLDFORMAT, FLDLEN, LLIST, LCHK, DEFVAL, VISIBLE, DISABLE, MANDATORY, AMTEXP, VALIDTAG, LOOKUP, DATATYPE, INVNAME, FLDSOURCE, FLDDESC, CHAINNAME, PRINTINFO, LOOKUPNAME, SEARCHCODE, SRMODCODE, INVFORMAT, CTLTYPE, RISKFLD, GRNAME, TAGFIELD, TAGVALUE, TAGLIST, TAGQUERY, PDEFNAME, TAGUPDATE, FLDRND, SUBFIELD, PDEFVAL, DEFDESC, DEFPARAM)
values ('LN', 'LNNAME', 'LN.LNTYPEXT', 'LNNAME', 'Tên loại hình', 'lnname', 2, 'C', null, null, 100, null, null, null, 'Y', 'N', 'Y', null, null, 'N', 'C', null, null, null, null, null, null, null, null, null, 'T', 'N', 'MAIN', null, null, null, 'N', null, 'Y', null, 'N', null, null, null);
COMMIT;
/

