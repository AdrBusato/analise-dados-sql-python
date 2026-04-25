# %%

import pandas as pd

import sqlalchemy

# conexão com o banco de dados
engine = sqlalchemy.create_engine("sqlite:///database.db")

# lendo a query do arquivo de texto
with open("etl_projeto.sql") as open_file:
    query = open_file.read()

# %%

dates = [
    '2025-01-01',
    '2025-01-02',
    '2025-01-03',
    '2025-01-04',
    '2025-01-05',
    '2025-01-06',
    '2025-01-07',
]

for i in dates:

    # executa a query e traz os dados para o python 
    df = pd.read_sql(query.format(date=i), engine)

    # pega os dados do python e manda para o banco na tabela feature_store_clientes
    df.to_sql("feature_store_clientes", engine, index=False, if_exists="append")