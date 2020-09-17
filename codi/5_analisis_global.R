################
# 17//09//2020 #
################


 rm(list=ls())
# dir_dades="dades/mostra"



#rm(list=ls())
#dir_dades="dades/SIDIAP"
rmarkdown::render(input="./codi/1_lectura_COVID.Rmd",
                  output_file="output/informe_lectura.html",
                  params = list(dir_dades="dades"))


#rm(list=ls())
#dir_dades="dades/SIDIAP"
rmarkdown::render(input="./codi/2_analisi_COVID.Rmd",
                  output_file="output/informe_exploratori.html",
                  params = list(dir_dades="dades"))



