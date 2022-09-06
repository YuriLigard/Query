SELECT atendime.cd_atendimento                 as  atendimento,
       atendime.dt_atendimento,                 
       UNTIL_TODAY(atendime.dt_atendimento) as Quant_dias_internado  
FROM dbamv.atendime
    WHERE
        atendime.sn_internado = 'S'                         -- Indica se o Paciente deste Atendimento está internado. (S/N)
        AND atendime.cd_atendimento_pai IS NOT NULL         -- Campo diferente de NULL [NUMBER (10, 0)] indica que o paciente está vinculado ao atendimento pai 
        AND UNTIL_TODAY(atendime.dt_atendimento) >= 2;      -- TODAY_BETWEEN função não nativa que retorna a quantidade de dias [NUMBER] de uma data [DATE] até a data atual [SYSDATA - HORA DO SERVIDOR]
                                                            -- data --| data 
