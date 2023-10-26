import pandas as pd

##Principais estruturas

#Series
s = pd.Series([1, 2, 3])
print(s)
#A serie pode ser acessada por índices
print(s[0])
print(s.index)

#É possível editar a forma como os índices se chamam em uma serie
s.index = ['um', 'dois', 'tres']
print(s.index)

#Criar serie com indice personalizado
s1 = pd.Series([9, 10, 11], index=[1, 2, 3])
print(s1.index)

#Dataframes
m = pd.DataFrame([['x1', 'x2', 'x3'], ['y1', 'y2', 'y3']])
print(m)

#É possível renomar linhas e colunas de um dataframe
m1 = pd.DataFrame([[1, 2, 3], [4, 5, 6]], columns=['col1', 'col2', 'col3'], index=['li1', 'li2'])
print(m1)

##Seleção e filtro de dados

m2 = pd.DataFrame({
                    'nome': ['Joana', 'Maria', 'Josefa'],
                    'idade': [15, 18, 21],
                    'nota': [8, 9, 10]
                    }, index = [7, 8, 9])

#Recuperando o valor do atributo (coluna) nome através do index do registro
print(m2.loc[9, 'nome'])

##Recuperando o valor de mais de uma coluna
print(m2.loc[9, ['nome', 'idade', 'nota']])

#Usando iloc
print(m2.iloc[2]['nome'])

#Diferenças
#loc: é usado para acessar um grupo de linhas e colunas por rótulos (labels) ou uma condição booleana.
#iloc: é usado para acessar um grupo de linhas e colunas por índices inteiros.

m3 = pd.DataFrame({'numeros': [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]})

#Usando o loc para selecionar com condicional
#Traz somente true ou false e todas as linhas. indice x booleano
print(m3['numeros'] >=5)

#Traz os valores e somente os que são >=. indice x valor
print(m3[m3['numeros'] >=5])

#Expressoes booleanas podem também ser aplicadas sem series

#Agrupamento de dados e agregações
s3 = pd.Series([1, 2, 3, 4, 5])
m4 = pd.DataFrame([[1, 2, 3], [4, 5, 6]])

#Somando todos os valores de uma serie
print(s3.sum())

#Somando todos os valores de um dataframe, por colunas.
print(m4)
print(m4.sum())

#Group by em series e data frames
m5 = pd.DataFrame({'nome': ['Tel1', 'Tel2', 'Tel3'],
                   'tipo': ['antigo', 'novo', 'novo']})

#Agrupa pelo campo passando dentro da função
tipos_agrupados = m5.groupby('tipo')

#Seleciona os grupos criados a partir do groupby. O retorno do .groups é do tipo DataFrameGroupBy, que possui métodos de análise específicos
print(tipos_agrupados.groups)

m6 = pd.DataFrame({
                    'nome': ['felipe', 'joão', 'maria', 'ana'],
                    'idade': [19, 19, 20, 20],
                    'dinheiro': [100, 100, 150, 150]})

agroup_idade = m6.groupby('idade')

#Vai contar quantos registros aparecem, no caso, quantos registros de cada idade agrupada
print(agroup_idade.count())

#Agrupou por idade, e agora vai somar o atributo dinheiro do grupo criado, ou seja, quanto dinheiro possui cada idade
print(agroup_idade['dinheiro'].sum())