library("readxl")
library("data.table")
library("dplyr")
setwd('C:/Users/ra236134/Downloads')
dados_cafe <- read_excel('C:/Users/ra236134/Downloads/Data_Coffee.xlsx', skip=1)

#################################################################################################

#creating tabbles

tabela_2017 <- dados_cafe[, 1:46] 
tabela_2006 <- dados_cafe[, 48:87]
tabela_95_96 <- dados_cafe[, 89:101]

dados_2017 <- tabela_2017 %>% select (-c(Homens...35, Mulheres...37, 
                                         `Porcentagem deHomens...36`,
                                         `Porcentagem deMulheres...38`, 
                                         `Total de trabalhadores...34`))

dados_2006 <- tabela_2006 %>% select (-c(Homens...76, Mulheres...78,
                                         `Porcentagem deHomens...77`, 
                                         `Porcentagem deMulheres...79`,
                                         `Total de trabalhadores...75`))

dados_95_96 <- tabela_95_96 %>% select (-c(Homens...97, Mulheres...99, `Porcentagem dehomens`, 
                                           `Porcentagem demulheres`))
#renaming columns
names(dados_2017) <- sub("\\....*", "", names(dados_2017))
names(dados_2006) <- sub("\\....*", "", names(dados_2006))
names(dados_95_96) <- sub("\\....*", "", names(dados_95_96))

#################################################################################################

#descriptive statistics
media_2017 <- sapply(dados_2017[2:41], mean)
dp_2017 <- sapply(dados_2017[2:41], sd)
min_2017 <- sapply(dados_2017[2:41], min)
max_2017 <- sapply(dados_2017[2:41], max) #checked


media_2006 <- sapply(dados_2006[2:35], mean)
dp_2006 <- sapply(dados_2006[2:35], sd)
min_2006 <- sapply(dados_2006[2:35], min)
max_2006 <- sapply(dados_2006[2:35], max)

media_95_96 <- sapply(dados_95_96[2:9], mean)
sd_95_96 <- sapply(dados_95_96[2:9], sd)
min_95_96 <- sapply(dados_95_96[2:9], min)
max_95_96 <- sapply(dados_95_96[2:9], max)

