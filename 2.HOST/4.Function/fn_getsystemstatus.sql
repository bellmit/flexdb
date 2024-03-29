CREATE OR REPLACE FUNCTION fn_getsystemstatus
return varchar2
is
v_hostatus char(1);
v_currdate varchar2(100);
v_prevdate varchar2(100);
v_message varchar2(1000);
v_countAllBatch number;
v_countBFBatch number;
v_count number;
v_BFCount number;
v_bchsqn_endBFBatch varchar2(10);
begin
    v_message:='System Status';
    v_hostatus:= CSPKS_SYSTEM.fn_get_sysvar('SYSTEM','HOSTATUS');
    v_currdate:= CSPKS_SYSTEM.fn_get_sysvar('SYSTEM','CURRDATE');
    v_prevdate:= CSPKS_SYSTEM.fn_get_sysvar('SYSTEM','PREVDATE');
    select count(1) into v_count from sbbatchsts where bchdate = to_date(v_currdate,'DD/MM/RRRR') and trim(bchsts) = 'Y';

    if v_count=0 and v_hostatus='1' then
        --He thong dang hoat dong binh thuong ngay v_currdate
        v_message:='H? th?ng dang ho?t d?ng, ng�y h? th?ng ' || v_currdate || '!';
        return v_message;
    end if;

    select bchsqn into v_bchsqn_endBFBatch from sbbatchctl where bchmdl='SAAFINDAYPROCESS';
    select count(1) into v_countAllBatch from  sbbatchctl where status ='Y';
    select count(1) into v_countBFBatch from  sbbatchctl where status ='Y' and bchsqn <=v_bchsqn_endBFBatch;

    if v_count=0 and v_hostatus='0' then
        select count(1) into v_count from sbbatchsts where bchdate = to_date(v_prevdate,'DD/MM/RRRR') and trim(bchsts) = 'Y';
        --he thong dang chay batch buoc v_count/v_countAllBatch va da chuyen ngay moi
        v_message:='H? th?ng dang ch?y batch t?i bu?c ' || to_char(v_count) || '/' || to_char(v_countAllBatch) || ' v� d� chuy?n sang ng�y m?i ' || v_currdate || '!';
        return v_message;
    end if;
    select count(1) into v_BFCount from sbbatchsts where
           bchdate = to_date(v_currdate,'DD/MM/RRRR')
           and bchmdl='SAAFINDAYPROCESS' and trim(bchsts)='Y';
    if v_count>0 then
        if v_count<v_countBFBatch and v_BFCount = 0 then
            --He thong dang chay buoc xu ly truoc cuoi ngay tai buoc v_count/v_countBFBatch
            v_message:='H? th?ng dang trong qu� tr�nh ch?y x? l� tru?c cu?i ng�y t?i bu?c ' || to_char(v_count) || '/' || to_char(v_countBFBatch);
            return v_message;
        end if;
        if v_BFCount>0 and v_hostatus='1' then
           --He thong dang hoat dong sau buoc xu ly truoc cuoi ngay
            v_message:='H? th?ng dang ho?t d?ng v� d� ch?y bu?c x? l� tru?c cu?i ng�y, ng�y h? th?ng ' || v_currdate  || '!';
            return v_message;
        end if;
        if v_BFCount>0 and v_hostatus='0' then
            --He thong danh chay batch cuoi ngay tai buoc
            v_message:='H? th?ng dang trong qu� tr�nh ch?y x? l� cu?i ng�y t?i bu?c ' || to_char(v_count) || '/' || to_char(v_countAllBatch);
            return v_message;
        end if;
    end if;
end;
/

