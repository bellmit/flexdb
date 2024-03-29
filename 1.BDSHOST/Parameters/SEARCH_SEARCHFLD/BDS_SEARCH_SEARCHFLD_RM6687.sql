﻿--
--
/
DELETE SEARCH WHERE SEARCHCODE = 'RM6687';
INSERT INTO SEARCH (SEARCHCODE,SEARCHTITLE,EN_SEARCHTITLE,SEARCHCMDSQL,OBJNAME,FRMNAME,ORDERBYCMDSQL,TLTXCD,CNTRECORD,ROWPERPAGE,AUTOSEARCH,INTERVAL,AUTHCODE,ROWLIMIT,CMDTYPE)
VALUES ('RM6687','Tra cứu danh sách bảng kê đang gửi chờ huỷ (6687)','View sending EOD report waiting for cancel (6687)','SELECT MST.AUTOID, MST.VERSION,MST.VERSIONLOCAL, MST.TXDATE, MST.REFBANK,NVL(CRB.BANKNAME,MST.REFBANK) BANKNAME
, MST.CREATETST, MST.SENDTST,FN_CRB_GETVOUCHERNO(MST.TRFCODE, MST.TXDATE, MST.VERSION) VOUCHERNO,MST.TRFCODE,MST.STATUS,
A0.CDCONTENT DESC_STATUS,ERR.ERRDESC, A1.CDCONTENT DESC_TRFCODE,MST.NOTES,MST.TLID,TL.TLNAME,MST.OFFID,TL1.TLNAME OFFNAME
FROM CRBTRFLOG MST, ALLCODE A0, ALLCODE A1,TLPROFILES TL,TLPROFILES TL1,CRBDEFBANK CRB,DEFERROR ERR
WHERE MST.TLID=TL.TLID(+) AND MST.OFFID = TL1.TLID(+) AND MST.ERRCODE=ERR.ERRNUM(+)
AND MST.REFBANK=CRB.BANKCODE(+) AND A0.CDTYPE=''RM'' AND A0.CDNAME=''TRFLOGSTS''
AND A0.CDVAL=MST.STATUS AND A1.CDTYPE=''SY'' AND A1.CDNAME=''TRFCODE''
AND A1.CDVAL=MST.TRFCODE AND MST.STATUS IN (''A'',''S'') AND MST.ERRSTS=''N''
AND MST.TRFCODE IN (
    SELECT DISTINCT TRFCODE FROM CRBDEFACCT WHERE cspks_rmproc.is_number(MSGID)=1
)','CRBTRFLOG',null,null,'6687',0,50,'N',30,null,'Y','T');
COMMIT;
/
--
--
/
DELETE SEARCHFLD WHERE SEARCHCODE = 'RM6687';
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (12,'NOTES','Ghi chú','C','RM6687',100,null,'LIKE,=',null,'Y','Y','N',150,null,'Notes','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (11,'DESC_STATUS','Trạng thái','C','RM6687',80,null,'LIKE,=',null,'Y','Y','N',100,null,'Status','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (10,'CREATETST','Thời điểm tạo','C','RM6687',80,null,'LIKE,=',null,'Y','Y','N',100,null,'Created time','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (9,'STATUS','Trạng thái','C','RM6687',80,null,'LIKE,=',null,'N','N','N',100,null,'Status','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (7,'DESC_TRFCODE','Loại','C','RM6687',80,null,'LIKE,=',null,'Y','Y','N',120,null,'Type','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (6,'TRFCODE','Loại','C','RM6687',80,null,'LIKE,=',null,'Y','Y','N',100,null,'Type','N','06',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (5,'BANKNAME','Tên ngân hàng','C','RM6687',0,null,'LIKE,=',null,'Y','Y','N',100,null,'Bank name','N','94',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (4,'REFBANK','Mã ngân hàng','C','RM6687',80,null,'LIKE,=',null,'Y','Y','N',100,null,'Bank','N','95',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (3,'VERSIONLOCAL','Mã nội bộ','C','RM6687',80,null,'LIKE,=',null,'Y','Y','N',80,null,'Local version','N','02',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (2,'VERSION','Số TT','C','RM6687',60,null,'LIKE,=',null,'Y','Y','N',100,null,'Version','N','03',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (1,'TXDATE','Ngày','D','RM6687',80,null,'>=,<=,=',null,'Y','Y','N',100,null,'Date','N','04',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (0,'AUTOID','Mã quản lý','N','RM6687',80,null,'=',null,'N','N','Y',80,null,'AutoID','N','01',null,'N',null,null,null,'N');
COMMIT;
/
