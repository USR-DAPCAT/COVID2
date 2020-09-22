################
# 22//09//2020 #
################

rm(list=ls())

#feina a fer:

  
#i)   Falta calcular tabla eventos para no diabéticos por sexo [OK]

#ii)  Falta añadir la variable fallo renal agudo en la tabla de eventos[OK]

#iii) Falta añadir la nueva variable enfermedad cardiovascular en el modelo de mortalidad
#     DG2.COMP_CARDIOVASC: [ajuste2,ajuste3,ajuste5,ajuste6][ok]

#iv)  Lo de la glucemia >200 suposo que es perque per la ADA una glucemia de >200 
#     en qualsevol moment del dia es criteri de DM
#     Pero en algun dels models (per exemple el que fa servir DM categorica)
#     doncs sí que s'hauria de posar la glucemia com a variable continua (Josep)[OK]

#Bon vespre:

#v) Respecto los foresplot,los puedes hacer en blanco y negro y poner una linia verical? si fet! [OK]


## Els 3 models són:
## M1: DM + variables clíniques bàsiques (edat i sexe)
## M2: M1 + obesitat + lesió orgànica (COPD, heart failure, kidney failure, cardiovascular diseases)
## M3 :M2 + hypertension + dyslipidemia.

## S'em fa estrany veure DM en el primer model, 
## obesitat en el segon i HTA i dislipèmia en el tercer. 
## No sé si Dídac i Josep us fa el mateix efecte

## Una altra possibilitat d'agrupació seria:
## vi) M1: igual  [OK]

## M2: M1 + obesitat + HTA + dislipèmia

## M3 : M2 + lesions orgàniques



#  Amb els models actuals, encara que les OR de les lesions d'orga diana són altes, 
#  la R2 canvia més del model 2 al 3 que del 1 al 2.  
#  Afegint HTA i dislipemia a model 2 i complicacions d'organ diana a model 3, 
#  segurmanet el canvi de R2 seria més progressiu (i més petit a l'últim pas)
#  Seria similar pels models que utilitzen glucosa continua.

#  El primer forest plot correspon a les taules 3.1 i 3.2 
#  amb la diferència de que en el forest plot l'edat és >65?? 
#  El segon a la Taula 5? Ensenyaríem taules i forest plots?




#i)
rmarkdown::render(input="./codi/1_lectura_COVID.Rmd",
                  output_file="output/informe_lectura.html",
                  params = list(dir_dades="dades"))

#ii)
rmarkdown::render(input="./codi/2_analisi_COVID.Rmd",
                  output_file="output/informe_exploratori.html",
                  params = list(dir_dades="dades"))



