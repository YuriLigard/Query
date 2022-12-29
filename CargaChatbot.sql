SET SQLFORMAT CSV

SELECT 
    
    cd_paciente AS N_PROTUÁRIO,
    nm_paciente AS NOME,
    nr_cpf AS CPF, 
    email as EMAIL
    
FROM paciente

WHERE dt_cadastro BETWEEN '01-01-14' AND '31-12-14'

ORDER BY dt_cadastro
