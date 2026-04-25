-- Qual cliente fez mais transações no ano de 2024?

SELECT IdCliente,
       COUNT(*),
       COUNT (DISTINCT IdTransacao) AS TotalTransacoes

FROM transacoes

WHERE DtCriacao >= '2024-01-01' 
AND DtCriacao < '2025-01-01'

-- WHERE strftime('%Y', DtCriacao) = '2024'

GROUP BY IdCliente

ORDER BY TotalTransacoes DESC

LIMIT 1;