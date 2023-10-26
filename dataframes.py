import pandas as pd

#Lendo dataset csv 
df_meteorite = pd.read_csv('meteorite-landings.csv')

#Resgata tipo do objeto montado a partir do CSV - Geralmente DataFrame ou Series 
print(type(df_meteorite))

#Resgata tamanho do frame (linhas, colunas)
print(df_meteorite.shape) 

#Resgata colunas do frame
print(df_meteorite.columns)

#Nesses dados de meteoritos temos dois tipos de nametype, Valid (Comum) e Relict (Degragadado), iremos agora separar o frame em dois considerando esse tipo
df_meteorite_valid = df_meteorite[df_meteorite['nametype'] == 'Valid']
df_meteorite_relict = df_meteorite[df_meteorite['nametype'] == 'Relict']

#Resgatando o número de registros dos dois frames ja da para perceber qual dos tipos possui mais registros.
print(df_meteorite_valid.shape)
print(df_meteorite_relict.shape)

#Resgatando a massa média de cada tipo de meteorito usando groupby no df principal:
#Agrupa por nametype criando um novo df agrupado
df_groupby_nametype = df_meteorite.groupby(['nametype'])
#Calcula a média utilizando a função mean() na coluna mass do dataframe agrupado
df_groupby_nametype_massmean = df_groupby_nametype['mass'].mean()
print(df_groupby_nametype_massmean)

#Contagem do recclas, classe dos meteoritos
df_groupby_recclass = df_meteorite.groupby(['recclass'])
df_groupby_recclass_count = df_groupby_recclass['recclass'].count()
print(df_groupby_recclass_count)

#Filtrar registros com quantida de massa (mass) > 500
df_mass_ma500 = df_meteorite[df_meteorite['mass'] > 500]
print(df_mass_ma500.shape)