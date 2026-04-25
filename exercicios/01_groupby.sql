-- Quantos clientes tem email cadastrado?

SELECT COUNT(*)
FROM clientes
WHERE flEmail = 1;

SELECT SUM(flEmail)
FROM clientes;