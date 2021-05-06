CREATE OR REPLACE PROCEDURE cf0050 (
   PV_REFCURSOR   IN OUT   PKG_REPORT.REF_CURSOR,
   OPT            IN       VARCHAR2,
   BRID           IN       VARCHAR2,
   F_DATE         IN       VARCHAR2,
   T_DATE         IN       VARCHAR2,
   I_BRID         IN       varchar2
 )
IS
--

   V_STROPTION        VARCHAR2 (5);       -- A: ALL; B: BRANCH; S: SUB-BRANCH
   V_STRBRID          VARCHAR2 (4);
   v_strIBRID     VARCHAR2 (4);
   VF_DATE      DATE;
   VT_DATE      DATE;
           -- USED WHEN V_NUMOPTION > 0
-- DECLARE PROGRAM VARIABLES AS SHOWN ABOVE

BEGIN

   V_STROPTION := OPT;

   IF (V_STROPTION <> 'A') AND (BRID <> 'ALL')
   THEN
      V_STRBRID := BRID;
   ELSE
      V_STRBRID := '%%';
   END IF;


   IF  (upper(I_BRID) <> 'ALL')
    THEN
            v_strIBRID := replace(upper(I_BRID),' ','_');
    ELSE
            v_strIBRID := '%%';
    END IF;

    VF_DATE := to_date(F_DATE,'dd/MM/RRRR');
    VT_DATE := to_date(T_DATE,'dd/MM/RRRR');


OPEN PV_REFCURSOR FOR
SELECT custid, fullname, idcode, iddate, idplace, address, cfmast.custodycd, activedate , oldlastdate ngay_dung_gd ,
        CASE WHEN v_strIBRID = '%%' THEN 'ALL' ELSE to_char(brname) END pham_vi
    FROM cfmast, brgrp, changecfstslog log
    WHERE brgrp.brid = substr(custid,1,4)
    AND brgrp.brid LIKE v_strIBRID
    AND log.custodycd = cfmast.custodycd
    AND log.newactivedate = cfmast.activedate
    AND log.olddmsts = 'Y' AND log.newDMSTS = 'N'
    AND dmsts = 'N'
    AND activedate is NOT NULL
    AND activedate <= VT_DATE AND activedate >= VF_DATE
;
EXCEPTION
   WHEN OTHERS
   THEN

      RETURN;
End;
/
