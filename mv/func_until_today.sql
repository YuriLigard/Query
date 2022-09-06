set serveroutput on;
create or replace FUNCTION until_today (

    p_date DATE

) RETURN NUMBER IS

    v_days NUMBER;

BEGIN

    v_days := TRUNC((sysdate - p_date), 0); 

    RETURN v_days;

END until_today; 

-- Retorna a quantidade de dias [NUMBER] de uma data [DATE] até a data atual [SYSDATA - HORA DO SERVIDOR] 
-- date |-- date 