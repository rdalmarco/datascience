#Distribuicao Binominal

#Definindo como sucesso o cliente comprar, e supondo que a probabilidade de sucesso ÃÂ© 50%. 
#Ao passar 10 clientes em nossa loja, qual a probabilidade de realizarmos 2 vendas?

# x = numero de sucessos
# size = numero de tentativas
# prob = probabilidade de sucesso em cada tentativa
dbinom (x = 2, size = 10, prob = 0.5)

#probabilidade de que ate dois clientes comprem. 
#(probabilidade de nenhum cliente comprar) +?(probabilidade de um cliente compra?) + probabilidade de dois cliente comprarem)

pbinom(q = 2,size = 10, prob = 0.5)


#Distribuicao Geometrica

#Definindo como sucesso o cliente comprar, e supondo que a probabilidade de sucesso e 50%. 
#Qual a probabilidade da primeira venda ocorrer quando o quinto cliente entrar na loja?

# x = numero de tentativas
# prob = probabilidade de sucessos
dgeom(x = 5, prob = 0.5)

# Pode-se utilizar a mesma funcao para nos dar a probabilidade do sucesso ocorrer na primeira tentativa? segunda, terceira....
va_geometrica <- dgeom(x = 1:10, prob = 0.5)
va_geometrica

plot(va_geometrica)

#Pode-se utilizar a distribuicao geometrica acumulada para saber qual a probabilidade do primeiro sucesso ocorrer na primeira tentativa
#OU na segunda tentativa OU na terceira tentativa...

va_geometrica_acumulada <- pgeom(0:3, prob = 0.5) 
plot(va_geometrica_acumulada)


# Distribuicao Binomial Negativa  

#Definindo como sucesso o cliente comprar, e supondo que a probabilidade de sucesso e 50%.
#Qual a probabilidade de ter que entrar 8 clientes ate que a segunda venda ocorra?

# x = numero de sucessos
# size = quantidade de tentativos
# prob = probabilidade de sucesso
dnbinom(x=2, size = 8, prob = 0.50) 


# Distribuicao Poisson

# Uma loja recebe em media, 6 (lambda) clientes por minuto. Qual a probabilidade de que 5(x) clientes entrem em um minuto?

# x =  quantidade a ser testada
# lambda =  taxa media de ocorrecia do evento em um determinado periodo de intervalo de tempo ou espaco
dpois(x=5,lambda = 6)

va_poison <- dpois(x = 1:15, lam?da = 6)
plot(va_poison,
     xlab = 'Numero Clientes',
     ylab = 'Probabilidade',
     main = 'Relacao Entradas de Clientes em 1 minuto x Probabilidades'
     )

# probabilidade acumulada de ate 5 clientes entrarem na loja em um minuto
va_poison <- ppois(1:5, lambda = 6)

plot(va_poison)


# d = distribuicao
# p = propabilidade acumulada (ate)

