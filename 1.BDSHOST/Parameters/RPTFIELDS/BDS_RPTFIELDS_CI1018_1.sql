﻿--
--
/
DELETE RPTFIELDS WHERE OBJNAME = 'CI1018_1';
INSERT INTO RPTFIELDS (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,TAGFIELD,TAGLIST,TAGVALUE,ISPARAM,CTLTYPE)
VALUES ('CI','VIA','CI1018_1','VIA','Kênh đặt lệnh','VIA',11,'M','ccc','_',3,'SELECT CDVAL VALUE,CDVAL VALUECD, CDCONTENT DISPLAY, CDCONTENT EN_DISPLAY, CDCONTENT DESCRIPTION FROM (SELECT CDVAL, CDCONTENT, LSTODR FROM ALLCODE WHERE CDTYPE = ''SA'' AND CDNAME = ''VIA'' AND CDVAL IN (''O'',''F'',''T'')UNION SELECT ''ALL'' CDVAL, ''ALL'' CDCONTENT, -1 LSTODR FROM DUAL) ORDER BY LSTODR',null,'ALL','N','N','Y',null,null,'Y','C',null,null,null,null,null,null,null,null,null,null,null,null,'N','T');
INSERT INTO RPTFIELDS (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,TAGFIELD,TAGLIST,TAGVALUE,ISPARAM,CTLTYPE)
VALUES ('CI','TYPEBRID','CI1018_1','TYPEBRID','Loại tìm kiếm','Type date',10,'M','ccc','_',3,'SELECT ''001'' VALUE, ''001'' VALUECD, ''Nơi làm giao dịch'' DISPLAY,  ''Nơi làm giao dịch'' EN_DISPLAY,  ''Nơi làm giao dịch'' DESCRIPTION FROM DUAL
union all
SELECT ''002'' VALUE, ''002'' VALUECD, ''Nơi làm mở tài khoản'' DISPLAY,  ''Nơi làm mở tài khoản'' EN_DISPLAY,  ''Nơi làm mở tài khoản'' DESCRIPTION FROM DUAL',null,'002','Y','N','Y',null,null,'Y','C',null,null,null,null,null,null,null,null,null,null,null,null,'Y','T');
INSERT INTO RPTFIELDS (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,TAGFIELD,TAGLIST,TAGVALUE,ISPARAM,CTLTYPE)
VALUES ('CI','PV_AFACCTNO','CI1018_1','PV_AFACCTNO','Số tiểu khoản','Sub account',9,'T','cccc.cccccc','_',10,null,null,'ALL','Y','N','N',null,null,'N','C',null,null,null,null,null,null,'AFMAST','CF',null,null,null,null,'Y','T');
INSERT INTO RPTFIELDS (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,TAGFIELD,TAGLIST,TAGVALUE,ISPARAM,CTLTYPE)
VALUES ('CI','PV_CUSTODYCD','CI1018_1','PV_CUSTODYCD','Số TK lưu ký','Custody code',8,'M','cccc.cccccc','_',10,null,null,'ALL','Y','N','N',null,null,'N','C',null,null,null,null,null,null,'CUSTODYCD_TX','CF',null,null,null,null,'Y','T');
INSERT INTO RPTFIELDS (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,TAGFIELD,TAGLIST,TAGVALUE,ISPARAM,CTLTYPE)
VALUES ('CI','COREBANK','CI1018_1','COREBANK','COREBANK','COBANK',7,'M','ccc','___',5,'SELECT ''Y'' VALUE, ''Y'' VALUECD, ''Corebank'' DISPLAY,
''Corebank'' EN_DISPLAY, ''Corebank'' DESCRIPTION
FROM Dual
union
SELECT ''N'' VALUE, ''N'' VALUECD, ''KBSV'' DISPLAY, ''KBSV''
EN_DISPLAY, ''KBSV'' DESCRIPTION
FROM Dual
union
SELECT ''ALL'' VALUE, ''ALL'' VALUECD, ''ALL'' DISPLAY, ''ALL''
EN_DISPLAY, ''ALL'' DESCRIPTION
FROM Dual',null,'ALL','Y','N','Y',null,null,'Y','C',null,null,null,null,null,null,null,null,null,null,null,null,'Y','T');
INSERT INTO RPTFIELDS (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,TAGFIELD,TAGLIST,TAGVALUE,ISPARAM,CTLTYPE)
VALUES ('CI','CHECKER','CI1018_1','CHECKER','Mã người check','CHECKER',6,'M','CCCC','_',4,'SELECT TLID VALUE,TLID VALUECD ,TLFULLNAME DISPLAY, TLFULLNAME EN_DISPLAY, TLFULLNAME DESCRIPTION FROM (SELECT TLID, TLFULLNAME,1 LSTODR FROM TLPROFILES  UNION SELECT ''ALL'' TLID, ''ALL'' TLFULLNAME, -1 LSTODR FROM DUAL) ORDER BY LSTODR',null,'ALL','Y','N','Y',null,null,'Y','C',null,null,null,null,null,null,'TLPROFILES','SA',null,null,null,null,'Y','T');
INSERT INTO RPTFIELDS (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,TAGFIELD,TAGLIST,TAGVALUE,ISPARAM,CTLTYPE)
VALUES ('CI','MAKER','CI1018_1','MAKER','Mã người nhập','MAKER',5,'M','CCCC','_',4,'SELECT TLID VALUE,TLID VALUECD ,TLFULLNAME DISPLAY, TLFULLNAME EN_DISPLAY, TLFULLNAME DESCRIPTION FROM (SELECT TLID, TLFULLNAME,1 LSTODR FROM TLPROFILES  UNION SELECT ''ALL'' TLID, ''ALL'' TLFULLNAME, -1 LSTODR FROM DUAL) ORDER BY LSTODR',null,'ALL','Y','N','Y',null,null,'Y','C',null,null,null,null,null,null,'TLPROFILES','SA',null,null,null,null,'Y','T');
INSERT INTO RPTFIELDS (MODCODE, FLDNAME, OBJNAME, DEFNAME, CAPTION, EN_CAPTION, ODRNUM, FLDTYPE, FLDMASK, FLDFORMAT, FLDLEN, LLIST, LCHK, DEFVAL, VISIBLE, DISABLE, MANDATORY, AMTEXP, VALIDTAG, LOOKUP, DATATYPE, INVNAME, FLDSOURCE, FLDDESC, CHAINNAME, PRINTINFO, LOOKUPNAME, SEARCHCODE, SRMODCODE, INVFORMAT, TAGFIELD, TAGLIST, TAGVALUE, ISPARAM, CTLTYPE)
VALUES ('CI', 'TLTXCD', 'CI1018_1', 'TLTXCD', 'Loại giao dịch ', 'TLTXCD', 3, 'M', 'cccccc', '_', 6, 'select tltxcd value, tltxcd VALUEcd, txdesc display, txdesc en_display, txdesc description from (   SELECT tltxcd, txdesc, 1 lstodr from tltx WHERE tltxcd IN  (''1140'',''1131'',''1100'',''1132'',''1107'',''1136'',''1141'',''1101'',''1133''
,''1104'',''1108'',''1111'',''1114'',''1104'',''1112'',''1145'',''1144'',''1153''
,''1123'',''1124'',''1126'',''1127'',''1162'',''1180'',''1182'',''5540'',''5566'',''5567'',''6613'',''2665'',''2665'',''1105'',''1198'',''1199'',''1178'',
''2646'',''2648'',''2674'',''2636'',''1178'',''8865'',''8866'',''8855'',''8856'',''0066'',''8889'',''8894'',''8851'',''1120'',''1130'',''1134'',''5541'',''3342'',''3384'',''3386'',''0088'',''1184'',''1185'',''1188'',''1113'',''1189'', ''1170'', ''1179'')
UNION ALL
SELECT ''8855T0'' tltxcd,''Thu phí mua T0'' txdesc ,1 LSTODR  FROM DUAL
UNION ALL
SELECT ''8855T2'' tltxcd,''Thu phí mua T2'' txdesc ,1 LSTODR  FROM DUAL
UNION ALL
SELECT ''ALL'' tltxcd,''ALL'' txdesc ,-1 LSTODR  FROM DUAL
ORDER BY tltxcd ) ORDER BY LSTODR ', null, 'ALL', 'Y', 'N', 'Y', null, null, 'Y', 'C', null, null, null, null, null, null, null, null, null, null, null, null, 'Y', 'T');
INSERT INTO RPTFIELDS (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,TAGFIELD,TAGLIST,TAGVALUE,ISPARAM,CTLTYPE)
VALUES ('CI','T_DATE','CI1018_1','T_DATE','Đến ngày','To date',2,'M','99/99/9999','dd/MM/yyyy',10,null,null,'<$BUSDATE>','Y','N','Y',null,null,'N','D',null,null,null,null,null,null,null,null,null,null,null,null,'Y','T');
INSERT INTO RPTFIELDS (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,TAGFIELD,TAGLIST,TAGVALUE,ISPARAM,CTLTYPE)
VALUES ('CI','F_DATE','CI1018_1','F_DATE','Từ ngày','From date',1,'M','99/99/9999','dd/MM/yyyy',10,null,null,'<$BUSDATE>','Y','N','Y',null,null,'N','D',null,null,null,null,null,null,null,null,null,null,null,null,'Y','T');
INSERT INTO RPTFIELDS (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,TAGFIELD,TAGLIST,TAGVALUE,ISPARAM,CTLTYPE)
VALUES ('CI','TYPEDATE','CI1018_1','TYPEDATE','Loại ngày','Type date',0,'M','ccc','_',3,'SELECT CDVAL VALUE, CDVAL VALUECD, CDCONTENT DISPLAY, CDCONTENT EN_DISPLAY, CDCONTENT DESCRIPTION FROM ALLCODE WHERE CDTYPE = ''OD'' AND CDNAME = ''TYPEDATE''  ORDER BY VALUE DESC',null,'002','Y','N','Y',null,null,'Y','C',null,null,null,null,null,null,null,null,null,null,null,null,'Y','T');
COMMIT;
/
