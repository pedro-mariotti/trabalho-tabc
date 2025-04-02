import pandas as pd

arquivo_xls = "Concorrente.xls"
arquivo_sql = "concorrente.sql"

df = pd.read_excel(arquivo_xls, engine="xlrd")

with open(arquivo_sql, "w") as f:
    ID = 1
    for _, row in df.iterrows():
        
        sql = f"INSERT INTO concorrente_vendas (ID_CONCORRENTE, ano, mes, valor, quantidade) VALUES ({ID}, {row['Ano']}, {row['Mês']}, {row['Valor']}, {row['Quantidade']});\n"
        f.write(sql)
        ID +=1

print(f"Arquivo SQL gerado: {arquivo_sql}")




