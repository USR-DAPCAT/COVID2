################
# 18//09//2020 #
################

rm(list=ls())

  
#i)   Falta calcular tabla eventos para no diabéticos por sexo [OK]
#ii)  Falta añadir la variable fallo renal agudo en la tabla de eventos[OK]
#iii) Falta añadir la nueva variable enfermedad cardiovascular en el modelo de mortalidad
#     DG2.COMP_CARDIOVASC: [ajuste2,ajuste3,ajuste5,ajuste6][ok]


#i)
rmarkdown::render(input="./codi/1_lectura_COVID.Rmd",
                  output_file="output/informe_lectura.html",
                  params = list(dir_dades="dades"))

#ii)
rmarkdown::render(input="./codi/2_analisi_COVID.Rmd",
                  output_file="output/informe_exploratori.html",
                  params = list(dir_dades="dades"))



