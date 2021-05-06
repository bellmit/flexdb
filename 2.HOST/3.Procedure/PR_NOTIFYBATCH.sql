CREATE OR REPLACE PROCEDURE PR_NOTIFYBATCH(pv_status IN VARCHAR2)
IS
   pv_ref    pkg_report.ref_cursor;
BEGIN
   OPEN pv_ref FOR
   SELECT 'R' MSGTYPE, 'BATCH' DATATYPE, pv_status REFID FROM dual;
   txpks_NOTIFY.PR_NOTIFYEVENT2FO(pv_ref, 'PUSH2FO');
EXCEPTION WHEN OTHERS THEN
   RETURN;
END;
/