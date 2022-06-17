library("readxl")
library("dplyr")
setwd('C:/Users/Kazuhiro/OneDrive/Projeto_BAS')
dados_cafe <- read_excel('C:/Users/Kazuhiro/OneDrive/Projeto_BAS/Base_Cafe.xlsx', skip=1)
head(dados_cafe)


tabela_2017 <- dados_cafe[, 1:46] 
tabela_2006 <- dados_cafe[, 48:87]
tabela_95_96 <- dados_cafe[, 89:101]


dados_2017 <- tabela_2017 %>% select (-c(Homens...35, Mulheres...37, `Porcentagem deHomens...36`,
                                         `Porcentagem deMulheres...38`, `Total de trabalhadores...34`))

dados_2006 <- tabela_2006 %>% select (-c(Homens...76, Mulheres...78, `Porcentagem deHomens...77`, 
                                         `Porcentagem deMulheres...79`, `Total de trabalhadores...75`))

dados_95_96 <- tabela_95_96 %>% select (-c(Homens...97, Mulheres...99, `Porcentagem dehomens`, 
                                           `Porcentagem demulheres`))


                                           