-- Qual o produto com mais pontos transacionados?

SELECT IdProduto,
        SUM(VlProduto * QtdeProduto) AS TotalPontos,
        SUM(QtdeProduto) AS QtdeVenda

FROM transacao_produto

GROUP BY IdProduto
ORDER BY SUM(VlProduto) DESC