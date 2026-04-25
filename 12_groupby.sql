-- SELECT IdProduto,
--         count(*)

-- FROM transacao_Produto

-- GROUP BY IdProduto 

SELECT IdCliente, 
        SUM(QtdePontos),
        COUNT(IdTransacao)

FROM transacoes

WHERE DtCriacao >= '2024-07-01' 
AND DtCriacao < '2024-08-01'

GROUP BY IdCliente
HAVING SUM(QtdePontos) >= 2500

ORDER BY SUM(QtdePontos) DESC

LIMIT 10