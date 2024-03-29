﻿--
--
/
DELETE SEARCH WHERE SEARCHCODE = 'PODETAILS_RP';
INSERT INTO SEARCH (SEARCHCODE,SEARCHTITLE,EN_SEARCHTITLE,SEARCHCMDSQL,OBJNAME,FRMNAME,ORDERBYCMDSQL,TLTXCD,CNTRECORD,ROWPERPAGE,AUTOSEARCH,INTERVAL,AUTHCODE,ROWLIMIT,CMDTYPE)
VALUES ('PODETAILS_RP','Thực cắt tiền đăng ký quyền mua','Thực cắt tiền đăng ký quyền mua','SELECT PO.POTXNUM, PO.POTXDATE, CM.REPORTDATE, CA.CAMASTID, SB.SYMBOL, CF.CUSTODYCD, AF.ACCTNO, CF.FULLNAME,
          (CA.PBALANCE + CA.BALANCE) REPORTDATE_QTTY,
          ROUND(CASE WHEN
               (CA.PBALANCE + CA.BALANCE)<> 0 THEN (CA.BALANCE / (CA.PBALANCE + CA.BALANCE)) *100
               ELSE 100 END, 2) PERCENT_EXECUTE,
          (CA.QTTY+CA.PQTTY) TOTAL_QTTY, CA.QTTY QTTY, CM.EXPRICE EXPRICE, (CA.QTTY* CM.EXPRICE) AMT, CM.DESCRIPTION
   FROM CFMAST CF, AFMAST AF, CAMAST CM,
        (SELECT afacctno, camastid, sum(balance) balance, sum(pbalance) pbalance, sum(qtty) qtty, sum(pqtty) pqtty FROM CASCHD GROUP BY afacctno, camastid)CA,
        SBSECURITIES SB,
        (SELECT potxdate, potxnum, afacctno, camastid FROM PODETAILS GROUP BY potxdate, potxnum, afacctno, camastid UNION
         SELECT potxdate, potxnum, afacctno, camastid FROM PODETAILSHIST GROUP BY potxdate, potxnum, afacctno, camastid) PO
   WHERE CF.CUSTID = AF.CUSTID AND AF.ACCTNO = CA.AFACCTNO
         AND CA.CAMASTID = CM.CAMASTID AND CM.CATYPE=''014''
         AND PO.CAMASTID = CA.CAMASTID AND PO.AFACCTNO = AF.ACCTNO
         AND SB.CODEID = CM.CODEID
         AND ca.Afacctno = af.acctno','PODETAILS_RP',null,null,null,null,50,'N',30,null,'Y','T');
COMMIT;
/
--
--
/
DELETE SEARCHFLD WHERE SEARCHCODE = 'PODETAILS_RP';
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (17,'DESCRIPTION','Diễn giải','C','PODETAILS_RP',100,null,'LIKE,=','_','Y','N','N',100,null,'Description','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (16,'AMT','Số tiền','N','PODETAILS_RP',100,null,'<,<=,=,>=,>',null,'Y','Y','N',100,null,'Exchange price','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (15,'EXPRICE','Giá mua','N','PODETAILS_RP',100,null,'<,<=,=,>=,>',null,'Y','Y','N',100,null,'Exchange price','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (14,'QTTY','SLCK dk mua','N','PODETAILS_RP',100,null,'<,<=,=,>=,>',null,'Y','Y','N',100,null,'Exchange price','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (13,'TOTAL_QTTY','SLCK duợc mua','N','PODETAILS_RP',100,null,'<,<=,=,>=,>',null,'Y','Y','N',100,null,'Exchange price','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (12,'PERCENT_EXECUTE','% thực hiện','N','PODETAILS_RP',100,null,'<,<=,=,>=,>',null,'Y','Y','N',100,null,'Exchange price','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (11,'REPORTDATE_QTTY','SL quyền tại ngày chốt','N','PODETAILS_RP',100,null,'<,<=,=,>=,>',null,'Y','Y','N',100,null,'Exchange price','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (10,'FULLNAME','Tên khách hàng','C','PODETAILS_RP',100,null,'LIKE,=',null,'Y','Y','N',150,null,'Customer name','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (9,'ACCTNO','Tiểu kho?n','C','PODETAILS_RP',100,'9999.999999','LIKE,=','_','Y','Y','N',100,null,'Contrac No','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (8,'CUSTODYCD','Số TK luu ký','C','PODETAILS_RP',10,'cccc.cccccc','LIKE,=','_','Y','Y','N',100,null,'Custody code','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (7,'TXNUM','Số CT','C','PODETAILS_RP',100,null,'LIKE,=',null,'N','N','N',100,null,'Transaction number','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (6,'TXDATE','Ngày chứng từ','D','PODETAILS_RP',100,null,'<,<=,=,>=,>','dd/MM/yyyy','N','N','N',100,null,'TXDATE','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (5,'SYMBOL','Chứng khoán','C','PODETAILS_RP',100,null,'LIKE,=',null,'Y','Y','N',100,null,'Symbol','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (4,'CAMASTID','Mã TH quyền','C','PODETAILS_RP',100,'cccc.cccccc.cccccc','LIKE,=','_','Y','Y','N',120,null,'CA code','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (3,'REPORTDATE','Ngày chốt danh sách','D','PODETAILS_RP',100,null,'<,<=,=,>=,>','dd/MM/yyyy','Y','Y','N',80,null,'Reported date','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (2,'POTXDATE','Ngày bảng kê','D','PODETAILS_RP',100,null,'<,<=,=,>=,>','dd/MM/yyyy','Y','Y','N',100,null,'POTXDATE','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (1,'POTXNUM','Số bảng kê','C','PODETAILS_RP',100,'9999.999999','LIKE,=','_','Y','Y','Y',100,null,'POTXNUM','N',null,null,'N',null,null,null,'N');
COMMIT;
/
