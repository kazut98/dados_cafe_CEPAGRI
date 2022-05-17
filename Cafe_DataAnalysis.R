#Installing packages 

install.packages("readxl")
library("readxl")

#Data

df_cafe <- read_excel("C:/Users/Kazuhiro/OneDrive/Documentos/Data_Cafe.xlsx")
str(df_cafe)