﻿--
--
/
DELETE SEARCH WHERE SEARCHCODE = 'CIMAST_ALL';
INSERT INTO SEARCH (SEARCHCODE,SEARCHTITLE,EN_SEARCHTITLE,SEARCHCMDSQL,OBJNAME,FRMNAME,ORDERBYCMDSQL,TLTXCD,CNTRECORD,ROWPERPAGE,AUTOSEARCH,INTERVAL,AUTHCODE,ROWLIMIT,CMDTYPE)
VALUES ('CIMAST_ALL','Quản lý tiểu khoản tiền đầu tư','CI account management','SELECT CF.CUSTODYCD, CI.CUSTID,CI.ACTYPE, SUBSTR(CI.ACCTNO,1,4) || ''.'' || SUBSTR(CI.ACCTNO,5,6) ACCTNO,
SB.SHORTCD, SUBSTR(CI.AFACCTNO,1,4) || ''.'' || SUBSTR(CI.AFACCTNO,5,6) AFACCTNO, CF.FULLNAME OWNERNAME,
CF.FULLNAME, CF.ADDRESS, CF.IDCODE LICENSE, CF.IDDATE, CF.IDPLACE,AF.BANKACCTNO,AF.BANKNAME,
CI.OPNDATE, CI.CLSDATE,CI.LASTDATE, CI.DORMDATE,A0.CDCONTENT STATUS, CI.BALANCE,CI.CRAMT,CI.DRAMT,CI.MBLOCK ,
CI.CRINTACR,CI.CRINTDT,CI.ODINTACR,CI.ODINTDT,CI.AVRBAL,CI.MDEBIT,CI.MCREDIT,CI.AAMT,CI.RAMT,BAMT,
CI.EMKAMT,CI.MMARGINBAL, CI.MARGINBAL,CI.ODLIMIT ,CI.ICCFCD, A1.CDCONTENT ICCFTIED, AF.CAREBY CAREBY,
AFT.LNTYPE, getbaldeftrfamt(CI.AFACCTNO) AVLCASH,greatest(getbaldeftrfamtex(CI.AFACCTNO),getbaldefovd(CI.AFACCTNO)) BALDEFTRFAMTEX,
getbaldefovd(CI.AFACCTNO) BALDEFOVD,fn_get_account_pp(CI.AFACCTNO,''N'') ppo, GREATEST(fn_get_account_pp(CI.AFACCTNO,''N'') - AF.MRCRLIMIT,0) P0TDAMT,
least(fnc_fo_getwithdrawPP(CI.AFACCTNO) ,case when  af.advanceline>0 THEN 0 ELSE GREATEST(fn_get_account_pp(CI.AFACCTNO,''N'') - AF.MRCRLIMIT,0) end) P0TDAMT_T0,
GET_DFDEBTAMT_RELEASE(CI.AFACCTNO,''U'') AVLRELEASE, CI.CIDEPOFEEACR, CI.DEPOFEEAMT, CI.DEPOLASTDT, CI.HOLDBALANCE, CI.COREBANK,
(CASE WHEN CI.COREBANK=''Y'' THEN 1 ELSE 0 END) ISCOREBANK
FROM CIMAST CI, ALLCODE A0 ,ALLCODE A1,CFMAST CF,SBCURRENCY SB, AFMAST AF, AFTYPE AFT
WHERE
CF.CUSTID = CI.CUSTID AND CI.CCYCD =SB.CCYCD AND
A0.CDTYPE = ''CI'' AND A0.CDNAME = ''STATUS'' AND A0.CDVAL=CI.STATUS
AND A1.CDTYPE = ''SY'' AND A1.CDNAME = ''YESNO'' AND A1.CDVAL=CI.ICCFTIED
AND CI.AFACCTNO = AF.ACCTNO AND AF.ACTYPE = AFT.ACTYPE','CIMAST_ALL','frmCIMAST',null,null,null,50,'N',30,null,'Y','T');
COMMIT;
/
--
--
/
DELETE SEARCHFLD WHERE SEARCHCODE = 'CIMAST_ALL';
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (38,'BANKNAME','Ngân hàng','C','CIMAST_ALL',100,null,'LIKE,=',null,'Y','Y','N',100,null,'Bank name','Y',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (37,'BANKACCT','Số TK NH','C','CIMAST_ALL',100,null,'LIKE,=',null,'Y','Y','N',100,null,'Bank account','Y',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (36,'COREBANK','Kết nối NH','C','CIMAST_ALL',100,null,'LIKE,=',null,'Y','Y','N',100,null,'CoreBank','Y',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (35,'DEPOFEEAMT','Tổng phí LK đến hạn','N','CIMAST_ALL',200,null,'<,<=,=,>=,>,<>','#,##0','Y','Y','N',120,null,'Total maturity depository fee','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (34,'DEPOLASTDT','Ngày chuyển phí LK đến hạn gần nhất','D','CIMAST_ALL',100,null,'<,<=,=,>=,>,<>',null,'N','N','N',150,null,'Last depository fee date','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (33,'CIDEPOFEEACR','Phí LK cộn dồn','N','CIMAST_ALL',100,null,'<,<=,=,>=,>,<>','#,##0','N','Y','N',200,null,'Depository fee accrue','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (32,'OWNERNAME','Chủ tài khoản','C','CIMAST_ALL',100,null,'LIKE,=',null,'N','N','N',100,null,'Owner name','Y',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (31,'AVLCASH','Số dư có thể rút','N','CIMAST_ALL',200,null,'<,<=,=,>=,>,<>','#,##0','Y','Y','N',120,null,'Available withdraw','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (30,'ADINTDT','Ngày tính lãi cộng dồn gần nhất','D','CIMAST_ALL',100,null,'<,<=,=,>=,>,<>',null,'N','N','N',150,null,'Advanced date','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (29,'ADINTACR','Lãi tiền ','N','CIMAST_ALL',100,null,'<,<=,=,>=,>,<>','#,##0','N','Y','N',200,null,'Advanced interest','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (28,'ODLIMIT','Hạn mức thấu chi của tài khoản','N','CIMAST_ALL',100,null,'<,<=,=,>=,>,<>',null,'N','N','N',200,null,'OD limit','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (27,'ICCFCD','Mã biểu phí,lãi','C','CIMAST_ALL',100,'ccccc','LIKE,=','_','N','N','N',150,null,'Interest, commission','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (26,'ICCFTIED','Mã biểu phí, lãi có theo loại hình không (Y/N)','C','CIMAST_ALL',100,null,'=',null,'N','N','N',300,'SELECT CDVAL VALUE, CDCONTENT DISPLAY FROM ALLCODE WHERE CDTYPE = ''SY'' AND CDNAME = ''YESNO'' ORDER BY LSTODR','Interest, commission follow product type','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (25,'MARGINBAL','Số dư Margin hiện tại','N','CIMAST_ALL',100,null,'<,<=,=,>=,>,<>','#,##0','N','Y','N',150,null,'Current margin balance','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (24,'MMARGINBAL','Số dư Maintenance Balance ','N','CIMAST_ALL',100,null,'<,<=,=,>=,>,<>','#,##0','N','Y','N',200,null,'Margin maintenance balance','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (23,'EMKAMT','Số dư phong toả khác','N','CIMAST_ALL',100,null,'<,<=,=,>=,>,<>','#,##0','Y','Y','N',120,null,'Blocked amount','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (22,'BAMT','Số dư dùng để ký quỹ ','N','CIMAST_ALL',100,null,'<,<=,=,>=,>,<>','#,##0','Y','Y','N',120,null,'Secured amount','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (21,'RAMT','Số tiền đã nhận ','N','CIMAST_ALL',100,null,'<,<=,=,>=,>,<>','#,##0','Y','Y','N',120,null,'Received amount','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (20,'AAMT','Số tiền đã nhận ứng trước','N','CIMAST_ALL',100,null,'<,<=,=,>=,>,<>','#,##0','Y','Y','N',120,null,'Advanced amount','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (19,'MCREDIT','Phát sinh có trong tháng','N','CIMAST_ALL',100,null,'<,<=,=,>=,>,<>','#,##0','Y','Y','N',150,null,'Monthly credit','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (18,'MDEBIT','Phát sinh nợ trong tháng','N','CIMAST_ALL',100,null,'<,<=,=,>=,>,<>','#,##0','Y','Y','N',120,null,'Monthly debit','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (17,'AVRBAL','Số dư trung bình','N','CIMAST_ALL',100,null,'<,<=,=,>=,>,<>','#,##0','Y','Y','N',120,null,'Average balance','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (16,'ODINTDT','Ngày tính lãi thấu chi cộng dồn','D','CIMAST_ALL',100,null,'<,<=,=,>=,>,<>',null,'N','N','N',120,null,'OD interest date','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (15,'ODINTACR','Lãi thấu chi cộng dồn','N','CIMAST_ALL',100,null,'<,<=,=,>=,>,<>','#,##0','N','Y','N',200,null,'OD interest','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (14,'CRINTDT','Ngày tính lãi gần nhất','D','CIMAST_ALL',100,null,'<,<=,=,>=,>,<>',null,'N','N','N',150,null,'Credit interest date','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (13,'CRINTACR','Lãi cộng dồn','N','CIMAST_ALL',100,null,'<,<=,=,>=,>,<>','#,##0','Y','Y','N',120,null,'Credit interest','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (12,'DRAMT','Tiền ghi nợ ','N','CIMAST_ALL',100,null,'<,<=,=,>=,>,<>','#,##0','Y','Y','N',120,null,'Debit amount','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (11,'CRAMT','Tiền ghi có ','N','CIMAST_ALL',100,null,'<,<=,=,>=,>,<>','#,##0','Y','Y','N',120,null,'Credit amount','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (10,'BALANCE','Số dư','N','CIMAST_ALL',200,null,'<,<=,=,>=,>,<>','#,##0','Y','Y','N',120,null,'Balance','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (9,'STATUS','Trạng thái','C','CIMAST_ALL',100,null,'LIKE,=',null,'Y','Y','N',80,'SELECT CDVAL VALUE, CDCONTENT DISPLAY FROM ALLCODE WHERE CDTYPE = ''CI'' AND CDNAME = ''STATUS'' ORDER BY LSTODR','Status','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (8,'DORMDATE','Ngày bắt đầu tính trạng thái ngủ','D','CIMAST_ALL',100,null,'<,<=,=,>=,>,<>',null,'N','N','N',80,null,'Dormant date','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (7,'LASTDATE','Ngày giao dịch cuối','D','CIMAST_ALL',100,null,'<,<=,=,>=,>,<>',null,'N','N','N',80,null,'LASTDATE','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (6,'CLSDATE','Ngày đóng tài khoản','D','CIMAST_ALL',100,null,'<,<=,=,>=,>,<>',null,'N','N','N',80,null,'Closed date','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (5,'OPNDATE','Ngày mở tài khoản','D','CIMAST_ALL',100,null,'<,<=,=,>=,>,<>',null,'Y','Y','N',80,null,'Open date','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (5,'MCRINTACR','Ngày bắt đầu tính lãi','D','CIMAST_ALL',100,null,'<,<=,=,>=,>,<>','##/##/####','Y','Y','N',80,null,'Credit interest date by month','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (4,'AFACCTNO','Mã số hợp đồng','C','CIMAST_ALL',100,null,'LIKE,=','_','N','N','N',200,null,'Contract No','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (4,'CUSTODYCD','Số TK lưu ký','C','CIMAST_ALL',100,null,'LIKE,=',null,'Y','Y','N',100,null,'CUSTODYCD','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (3,'SHORTCD','Mã tiền tệ','C','CIMAST_ALL',100,'cc','LIKE,=','_','Y','Y','N',60,null,'Curency','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (2,'FULLNAME','Tên khách hàng','C','CIMAST_ALL',100,null,'LIKE,=',null,'Y','Y','N',100,null,'Customer name','Y',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (1,'ACCTNO','Số tài khoản CI chi tiết','C','CIMAST_ALL',100,'cccc.cccccc','LIKE,=','_','Y','Y','Y',100,null,'Contract No','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (0,'ACTYPE','Loại hình tiền gửi','C','CIMAST_ALL',100,'cccc','LIKE,=','_','Y','Y','N',60,null,'Type','N',null,null,'N',null,null,null,'N');
COMMIT;
/
