-- Qual o valor médio de pontos positivos por dia?

SELECT SUM(QtdePontos) AS TotalPontos,
        COUNT(DISTINCT SUBSTRING(DtCriacao, 1, 10)) AS QtdeDiasUnicos,

        SUM(QtdePontos) /   COUNT(DISTINCT SUBSTRING(DtCriacao, 1, 10)) AS AvgPontosPorDia

FROM transacoes

WHERE QtdePontos > 0