-- Qual dia da semana tem mais pedidos em 2025?

SELECT 
    STRFTIME('%w', SUBSTR(DtCriacao, 1, 19)) AS Dia,
    COUNT(DISTINCT IdTransacao) AS QtdePedidos

FROM transacoes

WHERE SUBSTR(DtCriacao, 1, 4) = '2025'

GROUP BY 1
ORDER BY 2 DESC;