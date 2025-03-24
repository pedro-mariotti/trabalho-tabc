import json


arquivo_json = "Clientes_Dados_Complementar.json" # Nome do arquivo JSON
arquivo_sql = "insert cliente estado civil.sql" # Nome do  arquivo SQL de saída

# Lendo o arquivo JSON
with open(arquivo_json, "r", encoding="utf-8") as f:
    dados = json.load(f)


# Adicionando comandos INSERT para cada cliente
for cliente in dados["Cliente"]:
    sql_script += f"UPDATE CLIENTE SET ESTADO_CIVIL = '{cliente['Estado_civil']}' WHERE ID_CLIENTE = {cliente['ID']};\n"

# Salvando o SQL em um arquivo .txt
with open(arquivo_sql, "w", encoding="utf-8") as f:
    f.write(sql_script)

print(f"Arquivo gerado: {arquivo_sql} ")