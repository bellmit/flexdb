﻿delete from search where SEARCHCODE = 'CF0043';

insert into search (SEARCHCODE, SEARCHTITLE, EN_SEARCHTITLE, SEARCHCMDSQL, OBJNAME, FRMNAME, ORDERBYCMDSQL, TLTXCD, CNTRECORD, ROWPERPAGE, AUTOSEARCH, INTERVAL, AUTHCODE, ROWLIMIT, CMDTYPE)
values ('CF0043', 'Gửi yêu cầu mở tài khoản lên TTLK (GD 0043)', 'Send open account request to VSD (Transaction 0043)', 'SELECT MST.CUSTID, MST.CUSTODYCD, MST.FULLNAME, MST.IDCODE, MST.IDDATE, MST.IDPLACE, MST.OPNDATE, /*MST.IDTYPE,*/
       /*MST.COUNTRY,*/ MST.ADDRESS, MST.MOBILE MOBILE, MST.EMAIL, MST.DESCRIPTION, A0.CDCONTENT VSD_IDTYPE,
       A1.CDCONTENT VSD_COUNTRY, A3.CDCONTENT DESC_IDTYPE, A4.CDCONTENT DESC_COUNTRY,MST.IDEXPIRED,
       (CASE WHEN (TRIM(MST.CUSTTYPE) || TRIM(SUBSTR(MST.CUSTODYCD, 4, 1))) = ''IC'' THEN '' Cá nhân trong nuớc ''
             WHEN (TRIM(MST.CUSTTYPE) || TRIM(SUBSTR(MST.CUSTODYCD, 4, 1))) = ''BC'' THEN '' Tổ chức trong nuớc ''
             WHEN (TRIM(MST.CUSTTYPE) || TRIM(SUBSTR(MST.CUSTODYCD, 4, 1))) = ''IF'' THEN '' Cá nhân nuớc ngoài ''
             WHEN (TRIM(MST.CUSTTYPE) || TRIM(SUBSTR(MST.CUSTODYCD, 4, 1))) = ''BF'' THEN '' Tổ chức nuớc ngoài ''
             WHEN (TRIM(SUBSTR(MST.CUSTODYCD, 4, 1))) = ''P''                        THEN '' Tự doanh ''
        END) CUSTTYPE
FROM   CFMAST MST, ALLCODE A0, ALLCODE A1,ALLCODE A3, ALLCODE a4
WHERE  (NVL(MST.NSDSTATUS,''P'')=''P'' OR (MST.STATUS = ''A'' AND MST.NSDSTATUS = ''R'')) AND MST.STATUS != ''P''
       AND A0.CDTYPE=''SA'' AND A0.CDNAME=''VSDIDTYPE'' AND A0.CDVAL=MST.IDTYPE
       AND A1.CDTYPE=''CF'' AND A1.CDNAME=''NATIONAL'' AND A1.CDVAL=MST.COUNTRY
       AND A3.CDTYPE=''CF'' AND A3.CDNAME=''IDTYPE'' AND A3.CDVAL=MST.IDTYPE
       AND A4.CDTYPE=''CF'' AND A4.CDNAME=''COUNTRY'' AND A4.CDVAL=MST.COUNTRY
       AND MST.ACTIVESTS =''N''', 'CFMAST', 'frmSATLID', 'CUSTODYCD', '0043', null, 50, 'N', 30, 'NYNNYYYNNN', 'Y', 'T');

commit;