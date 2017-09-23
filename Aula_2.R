library(tidyverse)

# Importar minha base

x <- 5
rm(x)


setwd("~/churn")
rm(list = ls())
read.csv("churn.csv")
churn <- read.csv("churn.csv")

# Visualizando a Base
View(churn)
head(churn)


#Visualizando uma variável

table(churn$gender)

table(churn$Churn, churn$gender)

# Aplicando uma função a vários objetos

churn %>% 
  map(table)

saveRDS(churn, "churn.rds") #comando para salvar no
                            #formato rds que diminui consideravelmente o tamnho do arquivo
saveRDS(churn, "chur-teste.rds")

save.image("base.rda") #image sempre no formato .rda para recuperar todo o Enviroment

#Que tipo de variável é seniorcitizen?
str(churn$SeniorCitizen)

glimpse(churn) #para ver o tipo das variáveis

x <- churn$SeniorCitizen %>% 
  factor(labels = c ("não", "sim"))

table(x)

churn$SeniorCitizen <- churn$SeniorCitizen %>% 
  factor (labels = c ("não" , "sim"))

save.image("save_image.rda") #testar para recuperar a imagem
rm(list = ls())
load("save_image.rda")

# para limpar o console:ctrl+l

