-- Lista de pedidos realizados no fim de semana

SELECT IdTransacao, DtCriacao,
        strftime('%w', datetime(substring(DtCriacao, 1, 19))) AS diaSemana
FROM transacoes

WHERE diaSemana IN ('0', '6');
