library("readxl")
library("dplyr")
setwd("C:/Users/TEMP/Documents")
df_cafe <- read_excel("C:/Users/TEMP/Documents/Projeto BAS/dados_cafe.xlsx", skip=1)
head(df_cafe)

#tabelas 
tabela_2017 <- df_cafe[, 1:46]) 
tabela_2006 <- df_cafe[, 48:87]
tabela_95_96 <- df_cafe[, 89:101]

bind_cols(tabela_2017, tabela_2006, tabela_95_96)