#Distribuicao Normal

#A distribuicao dos salarios dos funcionarios de uma empresa segue uma distribuicao normal com media = 2500 e desvio padrao = 170.
#Ao selecionar aleatoriamente um individuo dessa populacao, qual a probabilidade de ter salario entre 2400 e 2600 ?
#Para isso é necessario achar P(X<=2600) e subtrair por P(X<=2400)

probabilidade_ate_2600 <- pnorm(q = 2600, mean = 2500, sd =170 )
print(probabilidade_ate_2600)

probabilidade_ate_2400 <- pnorm(q = 2400, mean = 2500, sd =170 )
print(probabilidade_ate_2400)

probabilidade_entre_2400_2600_dp170 = probabilidade_ate_2600 - probabilidade_ate_2400
print(probabilidade_entre_2400_2600_dp170)

#Gerar 100 números aleatórios para uma distribuição normal com média 2500 e desvio padrão 170
va_normal <- rnorm(n = 100, mean = 2500,sd = 170)
hist(va_normal)


#Distribuicao Normal Padrao

#O comando scale padroniza uma variável aleatoria. Ao aplicar o comando na variável va_normal criada, ela ficara com
#media zero e desvio padrao unitario (dp=1).

va_normal_padrao <- scale(va_normal)
hist(va_normal_padrao)

#A distribuicao dos salarios dos funcionarios de uma empresa segue uma distribuicao normal com media = 2500 e desvio padrao = 170.
#Ao selecionar aleatoriamente um indivíduo dessa população, qual a probabilidade de ter salário acima de 2.600 ?

#Primeiramente é necessário padronizar a variável

z <- (2600-2500)/170
pnorm(z)

#Visualizar o valo Z em relação a média

plot(density(scale(va_normal)))  #Plota curva de densidade
abline(v = 0,col = 'blue')  #Gera uma linha sobre média, que e zero pois padronizamos a distribuição
abline(v = 0.58,col = 'red')  #Gera uma linha sobre o valor z obtido


#Distribuicao F
#Gerando uma amostra aleatoria de 1000 numero seguindo uma distribuicao F

# n e a quantidade de numeros a ser gerado
# df1 e o primeiro grau de liberdade
# df2 e o segundo grau de liberdade
va_f <- rf( n= 1000, df1 = 100, df2 = 533)
hist(va_f)

#Conforme os graus de liberdade vao aumentando, a distribuicao F se aproxima da Normal.

#Distribuicao T
#Gera uma amostra aleatoria de 1000 numeros seguindo uma distribuicao T
va_t <- rt(1000, df = 20)
hist(va_t)

#A distribuição t, assim como a normal padrão, é centrada no zero

#Distribuicao Qui-Quadrado
#Gera uma amostra aleatoria de 1000 numeros seguindo uma distribuicaoo quiquadrado
va_QuiQuadrado <- rchisq(1000,df = 3)
hist(va_QuiQuadrado)