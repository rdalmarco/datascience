#Intervalo de confiança para média amostral pela distribuição Normal Padrão 

#Defini o nível de confiança do nosso intervalo.
ic <- 0.95

#Calcula alfa em relação ao nivel de confiança escolhido
alfa <- 1-ic

#Obtem o valor do quantil para o nível de confiança desejado com a função qnorm()
quantil_95 <- qnorm(1-(alfa/2))

#Valores para os quais quero calcular o intervalo de variação da média
media <- 30
desvio_padrao_populacional <- 7.31
n <- 30

#Aplicando a fórmula vista na apostila fica:
Limite_Superior <- 30+quantil_95*(desvio_padrao_populacional/sqrt(n))

Limite_Inferior <- 30-quantil_95*(desvio_padrao_populacional/sqrt(n))

paste("Com 95% de confiança, podemos afirmar que a média varia entre",Limite_Inferior," e ",Limite_Superior)
