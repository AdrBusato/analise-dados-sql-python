SELECT 
    SUM(QtdePontos),
    
    SUM(CASE 
        WHEN QtdePontos > 0 THEN QtdePontos
        END) AS QtdePontosPositivos,

    SUM(CASE 
        WHEN QtdePontos < 0 THEN QtdePontos
        END) AS QtdePontosNegativos,

    COUNT(CASE 
        WHEN QtdePontos < 0 THEN QtdePontos
        END) AS QtdeTransacoesNegativas


FROM transacoes

WHERE DtCriacao >= '2024-07-01' 
AND DtCriacao < '2024-09-01'