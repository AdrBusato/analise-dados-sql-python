-- DROP TABLE IF EXISTS cliente_d28;

CREATE TABLE IF NOT EXISTS cliente_d28 (
    IdCliente VARCHAR(250) PRIMARY KEY,
    QtdeTransacoes INTEGER
);

DELETE FROM cliente_d28;

INSERT INTO cliente_d28
SELECT IdCliente,
    count(DISTINCT IdTransacao) AS QtdeTransacoes

FROM transacoes
WHERE julianday('now') - julianday(substr(DtCriacao,1,10)) <= 28
GROUP BY IdCliente
;