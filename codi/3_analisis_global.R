############
#12.05.2021#
############
rm(list=ls())
#https://www.pauloldham.net/importing-csv-files-into-r/

#[23.4.2021]

#ultims dubtes:  01.04.2021--> 20:00
#Hola Ray

#Cuando puedas por favor de la base de datos de covidHM 
#si puedes sacar la N y % 
#de pacientes con códigos E10 (DM1) ,y pacientes con códigos E11 (Dm2)?

#Gracias

#B

# s'ha de fer 3 grups (DM1)+(DM2)+(DM->Glicada/Farmacs)





##########################
# 08//03//2021  22:30    #
##########################
#
#feina:

#Me puedes confirmar si la glucemia es la del ingreso, 
#antes de iniciar el tratamiento de  en el estudio con covid hospitales?
#
#Esta variable s(max_pacient_valor_GLU_), que nombre le puedo poner mas corto?
#Y es normal que no tenga intervalos de confianza?

#s(glucosa), no pongas ningún coeficiente, 
#pues no tiene interpretación entendible para un clínico. 
#Solamente se puede interpretar viendo la curva

##########################
#Hola Ray , 
#He parlat avuí amb la Mònica, 
#que està redactant l'article del COVID, 
#i ens demana si podem fer uns canvis en els anàlisis. 
#Et comento: 
#Es tracta de refer 
#les figures dels Splines 
#de la glucosa en front Mortalitat y VM (Global sense grups).  
#Farem les dues versus probabilitat predita (model final). 
#I canviarem el grau de curvatura 
#y el rang de valors pq no es vegi que cau partir d'un rang de valors.
#Segons lo parlat amb la Mònica es el que he entes 
#(Si no és així Mònica em pots corretgir)
#Mirat-ho i ho parlem demà 
##########################
#
#
#
#
#
#
#i)         Causes--> quins organs afecta el Virus!
#ii)        Si té patologies prèvies incrementa la Mortalitat i/o UCI i/o V.M.
#ii)        L'Edat l'influeix, o és més pel detoriament de la persona, per patològies prèvies.
#iii)       Quines Mascaretes es poden fer servir i quan duran?
#iv)        Entarrements antisocials i per què?
#v)         Cost d'un entarrament, VERGONYA AJUNTAMENT DE BARCELONA!.
#Vi....................................... pensar-ho!
#
#
##############################################################################
#Hola a tots,
#Sí, es tractaria de fer les splines (mortalitat i mortalita o IVM), 
#que són les figures en blanc i negre, 
#canviant el grau de curvatyra perquè hi ha poques observacions
#a partir de 500 i crec que pot ser la causa de la caiguda a partir dels 550 de la mortalitat.
#Tot i que el 95% CI és molt ampli, 
#no té sentit clínic que valors extrems de glucèmia s’associïn a menys mortalitat.
##############################################################################
#Per altra banda,
#la figura en color dels valors predits 
#de % de moratlitat en funció de la glicèmia està molt bé, 
#és el que serà més fàcil que entenguin els clínics,
#però potser seria millor fer-la amb la població total 
#(no estratificat per obesitat) i fer-la també per mortalitat i/o IVM. 
##############################################################################
#En resum, 4 figures noves (3 recalculades i una nova.
#No sé si m’explico, Ray, però si necessites aclariments em fas un truc. Gràcies a tots dos!!
#                             
#Mònica Gratacòs, MD, PhD
#Scientific and Medical Writing Services
#Tel: +34 93 4658697 / +34 639099294
#monica.gratacos@gmail.com
##############################################################################


#########################
# 17//12//2020          #
# Dijous  12:35         #
#########################
#                                                                                                                                                                                                                                                  
#                                                                                                                                                                                                                         
# dir_dades="dades/mostra"
#
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

######################
#vers1:: [24_04_2020]#
######################
######################################################################

#dir_dades="dades/SIDIAP"
dir_dades_origen="../../DADES/COVID_19/dades/24_04_2020"

rmarkdown::render(input="./codi/1_lectura_COVID.Rmd",
                  output_file=paste0(here::here("output/informe_lectura_1_"),Sys.Date()),
                  params = list(dir_dades=dir_dades_origen))
######################################################################
rmarkdown::render(input="./codi/2_analisi_COVID.Rmd",
                  output_file=paste0(here::here("output/informe_exploratori_1_"),Sys.Date()),
                  params = list(dir_dades=dir_dades_origen))

#####################################################################
#Error:[`starts_with()` must be used within a *selecting* function.]#
#####################################################################

# Falta arreglar dates, i actualitazr el catàleg! 

######################
#vers2:: [20_07_2020]#
######################
######################################################################
rm(list=ls())
#dir_dades="dades/SIDIAP"
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

dir_dades_origen="../../DADES/COVID_19/dades/20_07_2020"

rmarkdown::render(input="./codi/1_lectura_COVID2.Rmd",
                  output_file=paste0(here::here("output/informe_lectura_2_"),Sys.Date()),
                  params = list(dir_dades=dir_dades_origen))
######################################################################
rmarkdown::render(input="./codi/2_analisi_COVID2.Rmd",
                  output_file=paste0(here::here("output/informe_exploratori_2_"),Sys.Date()),
                  params = list(dir_dades=dir_dades_origen))
#####################################################################
#Error:[`starts_with()` must be used within a *selecting* function.]#
#####################################################################


######################
#vers3:: [19_04_2021]#
######################
######################################################################
rm(list=ls())
#dir_dades="dades/SIDIAP"

dir_dades_origen="../../DADES/COVID_19/dades/19_04_2021"
#
rmarkdown::render(input="./codi/1_lectura_COVID3.Rmd",
                  output_file=paste0(here::here("output/informe_lectura_3_"),Sys.Date()),
                  params = list(dir_dades=dir_dades_origen))
######################################################################
rmarkdown::render(input="./codi/2_analisi_COVID3.Rmd",
                  output_file=paste0(here::here("output/informe_exploratori_3_"),Sys.Date()),
                  params = list(dir_dades=dir_dades_origen))

#####################################################################
#Error:[`starts_with()` must be used within a *selecting* function.]#
#####################################################################