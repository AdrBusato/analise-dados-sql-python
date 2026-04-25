-- selecione produtos que contém 'churn' no nome

SELECT *
FROM produtos
WHERE DescCategoriaProduto LIKE '%churn%';