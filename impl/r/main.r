library(ggplot2)


#Resultados da linguagem java
path_java <- './java_results.csv'

content <- read.csv(path_java)

qplot(test,time_elapsed,data=content)

#Resultados da linguagem rust
path_rust <- './rust_results.csv'

content <- read.csv(path_rust)

qplot(test,time_elapsed,data=content)

#Resultados da linguagem python
path_python <- './python_results.csv'

content <- read.csv(path_python)

qplot(test,time_elapsed,data=content)


