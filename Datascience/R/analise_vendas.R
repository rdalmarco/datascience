dados <- data.frame(Vendas_Cafe = c(18, 20, 23, 23, 23, 23, 24, 25, 26, 26, 26, 26, 27,
                                    28, 28,
                                    29, 29, 30, 30, 31, 31, 33, 34, 35, 38, 39, 41, 44, 44, 46),
                    Preco_C?fe = c(4.77, 4.67, 4.75, 4.74, 4.63, 4.56, 4.59, 4.75, 4.75, 4.49,
                                   4.41, 4.32, 4.68, 4.66, 4.42, 4.71, 4.66, 4.46, 4.36, 4.47, 4.43,
                                   4.4, 4.61, 4.09, 3.73, 3.89, 4.35, 3.84, 3.81, 3.79),?                    Promocao = c("Nao", "Nao", "Nao", "Nao", "Nao", "Nao", "Nao", "Nao",
                                 "Sim",
                                 "Nao", "Sim", "Nao", "Nao", "Sim", "Sim", "Nao", "Sim", "Sim",
                               ? "Sim", "Nao", "Nao", "Sim", "Sim", "Sim", "Nao", "Sim", "Sim",
                                 "Sim", "Sim", "Sim"),
                    Preco_Leite = c(4.74, 4.81, 4.36, 4.29, 4.17, 4.66, 4.73, 4.11, 4.21, 4.25,
                                    4.62,?4.53, 4.44, 4.19, 4.37, 4.29, 4.57, 4.21, 4.77, 4, 4.31,
                                    4.34, 4.05, 4.73, 4.07, 4.75, 4, 4.15, 4.34, 4.15))
#visualiza a media (mean) e outras estatisticas descritivas das variaveis
summary(dados)
#Visualiza desvio padr?o (standard deviation) das variaveis
sd(dados$Vendas_Cafe)
sd(dados$Preco_Cafe)
sd(dados$Preco_Leite)

#Visualiza atraves de um histograma a distribuicao da variavel Preco_Cafe
hist(dados$Preco_Cafe)

# Customizando o histograma
hist(dados$Preco_Cafe,
    ?col = 'blue',
     main = 'Distribuicao dos Pre�os Praticados para o Caf�')


#Visualiza o histograma das tres variaveis numericas na mesma pagina
32
par(mfrow=c(2,2)) #Configura layout para posicionar os graficos em duas linhas e duas
colunas
hist(dados$V?ndas_Cafe,
     col = 'blue',
     main = 'Distribuicao das Vendas do Caf�')
hist(dados$Preco_Cafe,
     col = 'blue',
     main = 'Distribuicao dos Pre�os do Caf�')
hist(dados$Preco_Leite,
     col = 'blue',
     main = 'Distribuicao dos Pre�os do Leite')?
dev.off() #limpa os graficos e volta o layout para configuracao normal

#Visualiza relacao entre as vendas do caf� o pre�o do caf�
plot(y = dados$Vendas_Cafe,
     x = dados$Preco_Cafe)



#Customiza o grafico
plot(y = dados$Vendas_Cafe,
     33,
     x =?dados$Preco_Cafe,
     pch = 16,
     col = 'blue',
     xlab = 'Pre�o',
     ylab = 'Quantidade Vendidade',
     main = 'Rela��o entre o Pre�o e as Vendas do Caf�')
grid() #este comando adiciona linhas de grade ao grafico
#Colore os pontos em que havia pr?mo��o naquele dia
plot(y = dados$Vendas_Cafe,
     x = dados$Preco_Cafe,
     col = dados$Promocao,
     pch = 16,
     xlab = 'Pre�o',
     ylab = 'Quantidade Vendidade',
     main = 'Rela��o entre o Pre�o e as Vendas do Caf�')
#adiciona legenda
legend(x=?.4,y=45,
       c("Promo��o","Sem_Promo��o"),
       34,
       col=c("red","black"),
       pch=c(16,16))
grid()

#Cria uma nova variavel informando se naquele dia vendeu acima ou abaixo da media
historica
media <- mean(dados$Vendas_Cafe) #armazena a medi? em uma variavel
variavel <- ifelse(dados$Vendas_Cafe > media,
                   'Acima_da_media',
                   'Abaixo_da_media')
variavel <- factor(variavel) #converte nova variavel para factor
plot(variavel) #grafico com a qtde abaixo e acima da ?edia
table(variavel) #visualiza a qtde abaixo e acima da media

#Gera boxplot das vendas
boxplot(dados$Vendas_Cafe)
#Gera boxplot do preco
boxplot(dados$Preco_Cafe)

#Gera boxplot comparativo das vendas quando houve promocao e de quando nao houve
boxplot(d?dos$Vendas_Cafe~dados$Promocao)
35
#Customizando o boxplot
boxplot(dados$Vendas_Cafe~dados$Promocao,
        col = 'gray',
        pch = 16,
        xlab = 'Promo��o',
        ylab = 'Vendas',
        main = 'Vendas com promo��o vs Vendas sem promo��o')

