CREATE OR REPLACE PROCEDURE ordercleanup(indate IN VARCHAR2, ERR_CODE out Varchar2)
  IS
  V_INDATE VARCHAR2(10);

BEGIN
    V_INDATE:=indate;
    FOR REC IN
        (SELECT MST.ORDERID FROM ODMAST MST,SBSECURITIES SB  WHERE MST.REMAINQTTY>0 AND MST.ORSTATUS IN ('1','2','4','8','9')
            AND MST.CODEID=SB.CODEID AND SB.TRADEPLACE IN ('001','002','005')
            AND MST.EXECTYPE NOT IN ('AS', 'AB', 'CS', 'CB')
        )
    LOOP
    --CAP NHAT LAI TRANG THAI CHO CAC LENH CON DU.
        UPDATE ODMAST SET ORSTATUS='1', PORSTATUS=PORSTATUS || '1',REMAINQTTY=0,ADJUSTQTTY=0,MATCHAMT=0,EXPRICE=0,EXQTTY=0,CANCELQTTY=0,REJECTQTTY=0
        where orderid=rec.orderid;
    END LOOP;
    err_code:='0';
EXCEPTION
    WHEN others THEN
    	err_code:='-1';
        return;
END;
/
