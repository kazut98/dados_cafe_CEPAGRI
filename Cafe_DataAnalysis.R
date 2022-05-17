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


#from tibble to dataframe
df_cafe <- as.data.frame(df_cafe)
head(df_cafe)
str(df_cafe)

#Remove 1st row 
df_cafe <- df_cafe[-1]
str(df_cafe)


#remove columns: total de trabalhadores, homens, %homens, mulheres, %mulheres

#feature engineering 


 
