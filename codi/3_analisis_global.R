################
# 17//09//2020 #
################


 rm(list=ls())


#i)
rmarkdown::render(input="./codi/1_lectura_COVID.Rmd",
                  output_file="output/informe_lectura.html",
                  params = list(dir_dades="dades"))

#ii)
rmarkdown::render(input="./codi/2_analisi_COVID.Rmd",
                  output_file="output/informe_exploratori.html",
                  params = list(dir_dades="dades"))



