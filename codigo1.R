
library(dplyr)
library(readxl)

#Rutas o files
sheet <- 'Year 2009-2010'
ruta <- 'D:/OneDrive - Universidad Adolfo Ibanez/consultorias 2023/ucontinental_mg_datascience/Dictado del curso/Unidad 2/02 inputs/'

filexls <- 'online_retail_II.xlsx'
filecsv <- 'diabetes_prediction_dataset.csv'

#Leer conjuntos de datos
diab <- read.csv(paste0(ruta, filecsv), sep = ',', encoding = 'UTF-8')

retail <- read_excel(paste0(ruta, filexls), sheet = sheet)

save.image('resultados.RData')

pdf('edad_diabetes.pdf')
plot(diab$age, diab$HbA1c_level)
dev.off()
