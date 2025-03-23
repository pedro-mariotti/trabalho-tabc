import pandas as pd

# Caminho dos arquivos - exemplo abaixo.
caminho_csv = r".\concorrente.csv"
caminho_sql = r".\concorrente.sql"

# Carregar o CSV
df = pd.read_csv(caminho_csv)

# Gerar comandos SQL e salvar no arquivo SQL
with open(caminho_sql, "w") as f:
    for _, row in df.iterrows():
        sql = f"INSERT INTO concorrente_vendas (ano, mes, valor, quantidade) VALUES ({row['ano']}, {row['mes']}, {row['valor']}, {row['quantidade']});\n"
        f.write(sql)

print(f"Arquivo SQL gerado: {caminho_sql}")