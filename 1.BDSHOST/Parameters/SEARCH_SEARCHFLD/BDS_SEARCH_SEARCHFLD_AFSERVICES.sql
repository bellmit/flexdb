﻿--
--
/
DELETE SEARCH WHERE SEARCHCODE = 'AFSERVICES';
INSERT INTO SEARCH (SEARCHCODE,SEARCHTITLE,EN_SEARCHTITLE,SEARCHCMDSQL,OBJNAME,FRMNAME,ORDERBYCMDSQL,TLTXCD,CNTRECORD,ROWPERPAGE,AUTOSEARCH,INTERVAL,AUTHCODE,ROWLIMIT,CMDTYPE)
VALUES ('AFSERVICES','Quản lý đăng ký dịch vụ','Register services management','SELECT AFS.AUTOID, AFS.sertype, A1.cdcontent TYPEDESC,
AFS.regdate,
AFS.AFACTNO , CF.fullname CFFULLNAME, CF.email
CFEMAIL,CF.mobile CFMOBILE,
AFS.status, A2.cdcontent STATUSDESC, nvl(cfbm.refid,'''') refid,
nvl(cfbm.fullname,'''') fullname , nvl(cfbm.mobile,'''') mobile, nvl(cfbm.email,'''') email,
AFS.changedate , afs.changetlid, tl.tlname
FROM afservices AFS, ALLCODE A1, ALLCODE A2, AFMAST AF,
CFMAST CF, tlprofiles tl,
(select r.afacctno,max(substr(reacctno,1,10)) refid,max(cf.fullname) fullname ,max(cf.email) email,max(cf.mobile) mobile
from reaflnk r , cfmast cf, retype typ
where r.status=''A'' and
 substr(r.reacctno,1,10)=cf.custid
 and substr(r.reacctno,11,4)=typ.actype
 and typ.rerole=''BM''
 group by afacctno) cfbm
WHERE A1.cdtype=''AF'' AND A1.cdname=''SERTYPE'' AND
A1.CDVAL=AFS.sertype
AND A2.cdtype=''AF'' AND A2.cdname=''SERSTATUS'' AND
A2.CDVAL=AFS.status
and sertype=''000''
AND AFS.AFACTNO=AF.acctno AND AF.CUSTID=CF.CUSTID
and  afs.changetlid = tl.tlid(+)
and afs.AFACTNO = cfbm.afacctno(+)
union
SELECT AFS.AUTOID, AFS.sertype, A1.cdcontent TYPEDESC,
AFS.regdate,
AFS.AFACTNO , CF.fullname CFFULLNAME, CF.email
CFEMAIL,CF.mobile CFMOBILE,
AFS.status, A2.cdcontent STATUSDESC, afs.refid,
cfre.fullname, cfre.mobile, cfre.email,
AFS.changedate , afs.changetlid, tl.tlname
FROM afservices AFS, ALLCODE A1, ALLCODE A2 ,cfmast cfre,
AFMAST AF, CFMAST CF, tlprofiles tl
WHERE A1.cdtype=''AF'' AND A1.cdname=''SERTYPE'' AND
A1.CDVAL=AFS.sertype
AND A2.cdtype=''AF'' AND A2.cdname=''SERSTATUS'' AND
A2.CDVAL=AFS.status
and sertype=''001'' and afs.refid = cfre.custid
AND AFS.AFACTNO=AF.acctno AND AF.CUSTID=CF.CUSTID
and  afs.changetlid = tl.tlid(+)','AFSERVICES','frmAFSERVICES',null,null,0,50,'N',30,null,'Y','T');
COMMIT;
/
--
--
/
DELETE SEARCHFLD WHERE SEARCHCODE = 'AFSERVICES';
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (14,'CHANGETLID','User thay đổi','C','AFSERVICES',80,null,'LIKE,=',null,'N','Y','N',100,null,'Status','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (13,'TLNAME','User thay đổi','C','AFSERVICES',80,null,'LIKE,=',null,'Y','Y','N',100,null,'Status','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (12,'CHANGEDATE','Ngày thay đổi','C','AFSERVICES',80,null,'LIKE,=',null,'Y','Y','N',100,null,'Status','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (11,'EMAIL','Email MG','C','AFSERVICES',80,null,'LIKE,=',null,'Y','Y','N',100,null,'Status','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (10,'MOBILE','Điện thoại MG','C','AFSERVICES',80,null,'LIKE,=',null,'Y','Y','N',100,null,'Status','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (9,'FULLNAME','Tên môi giới','C','AFSERVICES',80,null,'LIKE,=',null,'Y','Y','N',200,null,'Status','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (8,'REFID','Mã môi giới','C','AFSERVICES',80,null,'LIKE,=',null,'Y','Y','N',100,null,'Status','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (7,'STATUSDESC','Trạng thái','C','AFSERVICES',80,null,'LIKE,=',null,'Y','Y','N',100,null,'Status','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (6,'CFMOBILE','Điện thoại','C','AFSERVICES',80,null,'LIKE,=',null,'Y','Y','N',100,null,'Status','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (5,'CFEMAIL','Email','C','AFSERVICES',80,null,'LIKE,=',null,'Y','Y','N',100,null,'Status','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (4,'CFFULLNAME','Họ tên','C','AFSERVICES',80,null,'LIKE,=',null,'Y','Y','N',100,null,'Status','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (3,'AFACTNO','Tiểu khoản','C','AFSERVICES',80,null,'LIKE,=',null,'Y','Y','N',100,null,'Status','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (2,'REGDATE','Ngày đăng ký','C','AFSERVICES',200,null,'=,LIKE',null,'Y','Y','N',100,null,'Effective date','Y',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (1,'TYPEDESC','Loại dịch vụ','C','AFSERVICES',200,null,'=,LIKE',null,'Y','Y','N',100,null,'Customer ID','Y',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (0,'AUTOID','MA','C','AFSERVICES',100,'9999','=,LIKE','_','N','N','Y',50,null,'AutoID','N',null,null,'N',null,null,null,'N');
COMMIT;
/