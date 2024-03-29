﻿--
--
/
DELETE RPTFIELDS WHERE OBJNAME = 'OD0070';
INSERT INTO RPTFIELDS (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,TAGFIELD,TAGLIST,TAGVALUE,ISPARAM,CTLTYPE)
VALUES ('OD','PV_CLEARDAY','OD0070','PV_CLEARDAY',' Ngày cắt tiền ',' Ngày cắt tiền ',6,'M',null,'_',5,'SELECT CDVAL VALUE, CDVAL VALUECD, CDCONTENT DISPLAY, CDCONTENT EN_DISPLAY, CDCONTENT DESCRIPTION, CDCONTENT EN_DESCRIPTION FROM (SELECT ''ALL'' CDVAL, ''ALL'' CDCONTENT, 0 LSTODR FROM DUAL UNION SELECT ''T0'' CDVAL, ''T0'' CDCONTENT, 1 LSTODR FROM DUAL UNION SELECT ''T2'' CDVAL, ''T2'' CDCONTENT, 2 LSTODR FROM DUAL) ORDER BY LSTODR',null,'ALL','Y','N','Y',null,null,'N','C',null,null,null,null,null,null,null,null,null,null,null,null,'Y','C');
INSERT INTO RPTFIELDS (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,TAGFIELD,TAGLIST,TAGVALUE,ISPARAM,CTLTYPE)
VALUES ('OD','BRGID','OD0070','BRGID','Mã chi nhánh','Branch ID',5,'M','cccccccccc','_',10,'SELECT BRID VALUE, BRID VALUECD, BRNAME DISPLAY, BRNAME EN_DISPLAY, BRNAME DESCRIPTION
FROM (SELECT BRID, BRNAME ,1 LSTODR FROM BRGRP UNION ALL SELECT ''ALL'' BRID ,''ALL'' BRNAME ,-3 LSTODR FROM DUAL
UNION ALL select ''GROUP1'' BRID , (brname_0002 || '' , '' || brname_0001 || '' , '' || brname_0003) BRNAME, -2 LSTODR
from(select max(case when brid = ''0002'' then brname else '''' end) brname_0002,
max(case when brid = ''0001'' then brname else '''' end) brname_0001,
max(case when brid = ''0003'' then brname else '''' end) brname_0003
from BRGRP where brid in (''0002'',''0001'',''0003''))
UNION ALL
select ''GROUP2'' BRID , (brname_0101 || '' , '' || brname_0102 || '' , '' || brname_0103) BRNAME,-1 LSTODR
from(
select max(case when brid = ''0101'' then brname else '''' end) brname_0101,
max(case when brid = ''0102'' then brname else '''' end) brname_0102,
max(case when brid = ''0103'' then brname else '''' end) brname_0103
from BRGRP where brid in (''0101'',''0102'',''0103''))
        )ORDER BY LSTODR ',null,'ALL','Y','N','Y',null,null,'Y','C',null,null,null,null,null,null,null,null,null,null,null,null,'Y','T');
INSERT INTO RPTFIELDS (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,TAGFIELD,TAGLIST,TAGVALUE,ISPARAM,CTLTYPE)
VALUES ('OD','CASHPLACE','OD0070','CASHPLACE','Nơi để tiền','Cash Place',4,'M','ccccccccccccc','_',12,'
SELECT CDVAL VALUE,CDVAL VALUECD, CDCONTENT DISPLAY, CDCONTENT EN_DISPLAY, CDCONTENT DESCRIPTION
FROM (SELECT CDVAL, CDCONTENT, LSTODR FROM ALLCODE WHERE CDTYPE = ''CF'' AND CDNAME = ''BANKNAME''
      UNION SELECT ''000'' CDVAL, ''Cty chứng khoán'' CDCONTENT, 0 LSTODR FROM DUAL
      UNION SELECT ''ALL'' CDVAL, ''Tất cả'' CDCONTENT, -1 LSTODR FROM DUAL
      ) ORDER BY LSTODR',null,'ALL','Y','N','Y',null,null,'Y','C',null,null,null,null,null,null,null,null,null,null,null,null,'Y',null);
INSERT INTO RPTFIELDS (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,TAGFIELD,TAGLIST,TAGVALUE,ISPARAM,CTLTYPE)
VALUES ('OD','PV_SECTYPE','OD0070','PV_SECTYPE','Loại Chứng khoán','SE type',3,'M','cccccc','_',6,'SELECT CDVAL VALUE,CDVAL VALUECD, CDCONTENT DISPLAY, CDCONTENT EN_DISPLAY, CDCONTENT DESCRIPTION FROM (SELECT CDVAL, CDCONTENT, LSTODR FROM ALLCODE WHERE CDTYPE = ''SA'' AND CDNAME = ''SECTYPE'' AND CDVAL IN (''001'',''006'',''008'') UNION SELECT ''ALL'' CDVAL, ''ALL'' CDCONTENT, -1 LSTODR FROM DUAL) ORDER BY LSTODR',null,'ALL','Y','N','Y',null,null,'Y','C',null,null,null,null,null,null,null,null,null,null,null,null,'Y',null);
INSERT INTO RPTFIELDS (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,TAGFIELD,TAGLIST,TAGVALUE,ISPARAM,CTLTYPE)
VALUES ('OD','TRADEPLACE','OD0070','TRADEPLACE','Sàn GD','Trade Place',2,'M','cccccc','_',6,'SELECT CDVAL VALUE,CDVAL VALUECD, CDCONTENT DISPLAY, CDCONTENT EN_DISPLAY, CDCONTENT DESCRIPTION FROM (SELECT CDVAL, CDCONTENT, LSTODR FROM ALLCODE WHERE CDTYPE = ''SA'' AND CDNAME = ''TRADEPLACE'' AND CDVAL IN (''001'',''002'',''005'') union SELECT ''999'' CDVAL, ''HOSE + HNX'' CDCONTENT, 0 LSTODR FROM DUAL UNION SELECT ''ALL'' CDVAL, ''ALL'' CDCONTENT, -1 LSTODR FROM DUAL) ORDER BY LSTODR',null,'ALL','Y','N','Y',null,null,'Y','C',null,null,null,null,null,null,null,null,null,null,null,null,'Y',null);
INSERT INTO RPTFIELDS (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,TAGFIELD,TAGLIST,TAGVALUE,ISPARAM,CTLTYPE)
VALUES ('OD','DATE_T','OD0070','DATE_T','Chu kỳ thanh toán','T date',1,'M','9','_',6,null,null,'<$SQL>select nvl(max(varvalue),3) defname from sysvar where varname = ''CLEARDAY''','Y','N','Y',null,null,'N','C',null,null,null,null,null,null,null,null,null,null,null,null,'Y','T');
INSERT INTO RPTFIELDS (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,TAGFIELD,TAGLIST,TAGVALUE,ISPARAM,CTLTYPE)
VALUES ('OD','I_DATE','OD0070','I_DATE','Ngày giao dịch','In date',0,'M','99/99/9999','dd/MM/yyyy',10,null,null,'<$BUSDATE>','Y','N','Y',null,null,'N','D',null,null,null,null,null,null,null,null,null,null,null,null,'Y',null);
COMMIT;
/
