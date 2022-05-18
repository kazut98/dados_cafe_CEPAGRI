#Installing packages 

install.packages("readxl")
library("readxl")
install.packages("ggplot2")
library("ggplot2")
install.packages("tidyverse")
library("tidyverse")

?dplyr

#Data 

df_cafe <- read_excel("C:/Users/Kazuhiro/OneDrive/Documentos/Data_Cafe.xlsx")

head(df_cafe)


#Remove 1st row 
df_cafe <- df_cafe[-1]
df_cafe$...2


#remove columns: total de trabalhadores, homens, %homens, mulheres, %mulheres

#feature engineering 


 
