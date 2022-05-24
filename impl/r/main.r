library(ggplot2)


#Resultados da linguagem java
path_java <- './java_results.csv'

content <- read.csv(path_java)

qplot(Dimensao,Tempo,data=content,
    main = "Relação Elementos/Tempo - Java",
    xlab = "Quantidade de Elementos",
    ylab = "Tempo de Processamento (ms)", 
    geom = c("point", "smooth"))

#Resultados da linguagem c
path_c <- './c_results.csv'

content <- read.csv(path_c)

qplot(Dimensao,Tempo,data=content,
    main = "Relação Elementos/Tempo - C",
    xlab = "Quantidade de Elementos",
    ylab = "Tempo de Processamento (ms)", 
    geom = c("point", "smooth"))

#Resultados da linguagem lua
path_lua <- './lua_results.csv'

content <- read.csv(path_lua)

qplot(Dimensao,Tempo,data=content,
    main = "Relação Elementos/Tempo - Lua",
    xlab = "Quantidade de Elementos",
    ylab = "Tempo de Processamento (ms)", 
    geom = c("point", "smooth"))

path_final <- './final.csv'

content <- read.csv(path_final)

qplot(Dimensao,Tempo,data=content,
    main = "Relação Elementos/Tempo - Geral",
    xlab = "Quantidade de Elementos",
    ylab = "Tempo de Processamento (ms)", 
    geom = c("point", "smooth"),
    col=Linguagem)

qplot(Dimensao,Tempo,data=content,
    main = "Relação Elementos/Tempo - Geral - Escala Logarítmica",
    xlab = "Quantidade de Elementos",
    ylab = "Tempo de Processamento (ms)", 
    col=Linguagem,
    geom = c("point", "smooth")) +
    scale_y_continuous(trans='log10') +
    scale_x_continuous(trans='log10')

