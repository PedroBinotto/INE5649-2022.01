library(ggplot2)


#Resultados da linguagem java
path_java <- './java_results.csv'

content <- read.csv(path_java)

qplot(Dimensao,Tempo,data=content,
    main = "Dimensão de Matriz/Tempo - Java",
    xlab = "Dimensão da Matriz",
    ylab = "Tempo de Processamento (ms)", 
    geom = c("point", "smooth"))

ggsave('plot_java.png', plot=last_plot(), scale=1)

#Resultados da linguagem c
path_c <- './c_results.csv'

content <- read.csv(path_c)

qplot(Dimensao,Tempo,data=content,
    main = "Dimensão de Matriz/Tempo - C",
    xlab = "Dimensão da Matriz",
    ylab = "Tempo de Processamento (ms)", 
    geom = c("point", "smooth"))

ggsave('plot_c.png', plot=last_plot(), scale=1)

#Resultados da linguagem lua
path_lua <- './lua_results.csv'

content <- read.csv(path_lua)

qplot(Dimensao,Tempo,data=content,
    main = "Dimensão de Matriz/Tempo - Lua",
    xlab = "Dimensão da Matriz",
    ylab = "Tempo de Processamento (ms)", 
    geom = c("point", "smooth"))

ggsave('plot_lua.png', plot=last_plot(), scale=1)

path_final <- './final.csv'

content <- read.csv(path_final)

qplot(Dimensao,Tempo,data=content,
    main = "Dimensão de Matriz/Tempo - Geral",
    xlab = "Dimensão da Matriz",
    ylab = "Tempo de Processamento (ms)", 
    geom = c("point", "smooth"),
    col=Linguagem)

ggsave('plot_geral.png', plot=last_plot(), scale=1)

qplot(Dimensao,Tempo,data=content,
    main = "Dimensão de Matriz/Tempo - Geral - Escala Logarítmica",
    xlab = "Dimensão da Matriz",
    ylab = "Tempo de Processamento (ms)", 
    col=Linguagem,
    geom = c("point", "smooth")) +
    scale_y_continuous(trans='log10') +
    scale_x_continuous(trans='log10')

ggsave('plot_log.png', plot=last_plot(), scale=1)

