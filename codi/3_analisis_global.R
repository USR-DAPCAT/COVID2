################
# 17//11//2020
# DIMARTS
################


rm(list=ls())
# dir_dades="dades/mostra"

library("dplyr")
library("lubridate")
#library("expss")
library("frequency")
library("sjPlot")
library("sjmisc")
library("sjlabelled")
library("base")
library("table1")
# load package
library("sjPlot")
library("sjmisc")
library("sjlabelled")
library("mgcViz")


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

#####################################################################
#Error:[`starts_with()` must be used within a *selecting* function.]#
#####################################################################


