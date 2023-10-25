#DistribuiÃ§Ã£o Binominal

#Definindo como sucesso o cliente comprar, e supondo que a probabilidade de sucesso Ã© 50%. 
#Ao passar 10 clientes em nossa loja, qual a probabilidade de realizarmos 2 vendas?

# x Ã© o nÃºmero de sucessos,
# size Ã©?o nÃºmero de tentativas,
# prob Ã© a probabilidade de sucesso em cada tentativa
dbinom (x = 2, size = 10, prob = 0.5)

#probabilidade de que atÃ© dois clientes comprem. 
#(probabilidade de nenhum cliente comprar) + (probabilidade de um cliente compra?) + probabilidade de dois cliente comprarem)

pbinom(q = 2,size = 10, prob = 0.5)


#DistribuiÃ§Ã£o GeomÃ©trica

#Definindo como sucesso o cliente comprar, e supondo que a probabilidade de sucesso Ã© 50%. 
#Qual a probabilidade da primeira venda oc?rrer quando o quinto cliente entrar na loja?

# x Ã© o nÃºmero de tentativas
# prob Ã© a probabilidade de sucessos
dgeom(x = 5, prob = 0.5)

# Pode-se utilizar a mesma funÃ§Ã£o para nos dar a probabilidade do sucesso ocorrer na primeira tentativa? segunda, terceira....

va_geometrica <- dgeom(x = 1:10, prob = 0.5)
va_geometrica

plot(va_geometrica)

#Pode-se utilizar a distribuiÃ§Ã£o geomÃ©trica acumulada para saber qual a probabilidade do primeiro sucesso ocorrer na primeira tentativa
#OU na?segunda tentativa OU na terceira tentativa...

va_geometrica_acumulada <- pgeom(0:3, prob = 0.5) 
plot(va_geometrica_acumulada)


# DistribuiÃ§Ã£o Binomial Negativa  

#Definindo como sucesso o cliente comprar, e supondo que a probabilidade de sucesso ?© 50%.
#Qual a probabilidade de ter que entrar 8 clientes atÃ© que a segunda venda ocorra?

# x Ã© o nÃºmero de sucessos
# size Ã© a quantidade de tentativos
# prob Ã© a probabilidade de sucesso
dnbinom(x=2, size = 8, prob = 0.50) 


# Distribui?§Ã£o Poisson

# Uma loja recebe em mÃ©dia, 6 (ðº) clientes por minuto. Qual a probabilidade de que 5(x) clientes entrem em um minuto?

# x Ã© a quantidade a ser testada
# lambda Ã© a taxa mÃ©dia de ocorrÃªcia do evento em um determinado ?erÃ­odo de intervalo de tempo ou espaÃ§o
dpois(x=5,lambda = 6)

va_poison <- dpois(x = 1:15, lambda = 6)
plot(va_poison,
     xlab = 'Numero Clientes',
     ylab = 'Probabilidade',
     main = 'RelaÃ§Ã£o Entradas de Clientes em 1 minuto x Probabili?ades'
     )

# probabilidade acumulada de atÃ© 5 clientes entrarem na loja em um minuto
va_poison <- ppois(1:5, lambda = 6)

plot(va_poison)


# d = distribuiÃ§Ã£o
# p = propabilidade acumulada (atÃ©)

