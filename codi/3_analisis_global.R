################
# 30//09//2020 #
################

#Bona tarda,

#Gràcies per l'update!

#Si no posem les dades d'HbA1c a les taules, aniran en el texte?
  
#  Sobre les interaccions, el que necessitem és que ens ajudin a contestar si diferents factors pronòstics tenen un pes diferent segons el grup o la variable de resultat.

#A mi la pregunta se'm genera si visualment l'efecte sembla diferent. P.e.
#- a gràfic 1, obesitat
#- a gràfic 2, obesitat
#- a gràfic 3, obesitat i hiperlipidèmia
#- a gràfic 4, obesitat, hiperlipidèmia i insuficiència cardíaca congestiva
#- a gràfic 5, obesitat, hiperlipidèmia
#- a gràfic 6, obesitat, hiperlipidèmia i insuficiència cardíaca congestiva

#Si escollim els models amb COPD només caldria analitzar els models corresponents a gràfics 1,3 i 6. Es podria testar si hi ha interacció en aquests tres models per les variables que indico a dalt i "acceptem" que no n'hi ha per les altres? Crec que mirar interaccions de primer ordre seria suficient.

#Salutacions

#Rosa Corcoy
#Directora de la Unitat de Diabetis,
#   Servei d'Endocrinologia i Nutrició,
#Hospital de la Santa Creu i Sant Pau, Barcelona
#Universitat Autònoma de Barcelona
#CIBER-BBN



#Hola Rosa,

#Per aclarir una mica el que necessiteu

#- Les interaccions de primer ordre relatiu a la Obesitat, HTA etc... x Diabetis  estan avaluades ja que es va fer un model per subgrups: diabetis, . En el Forest plot de mortalitat per grups es pot veure com canvia cada mesura d'associació per cada subgrup (Diabetis versus no Diabetes) 

#- Això mateix es pot afegir en un model , com a interaccions de primer ordre, però pot representar afegir molts més paràmetres i hi ha risc de sobreajust sino concretem.  

#- Entenem que les interaccions d'interès són: 1 obesitat x Diabetis , 2.   Diabetis x HTA, 3. Diabetis x Hiperlipemia, 4. Diabetis x IC ?
  
#- Voleu veure si "'l'efecte" de la diabetis canvia amb  sense la presència de cada un d'aquests factors o si "l'efecte" / associació de cada un d'aquests factors canvia amb la presencia o no de la diabetis? 

#- A quins gràfics a que et refereixes? Forest plots , mesures d'associació  altre? 

#Avui estic a Sant Pau, si vols ho parlem un moment amb els resultats, o ens respons el correu. 

#Fins aviat

#Jordi










# FEINA:

#De todas maneras preguntale que interacción
#o interacciones concretas quiere evaluar y de que orden, 2 3 4? 

#Hola Ray, 

#Por favor mira lo que nos comenta Rosa, 
#en algunas tablas se tiene que incluir tb COPD donde falta, gracias 
#Muchas gracias Bogdan

#Incluyo el texto con
#algún cambio de vocabulario
#por qué en algunas tablas no se incluye COPD?
#
#necesitamos testar interacción para concluir sobre la relevancia de los factores pronósticos?
#Saludos


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

## vi) 

## M1: igual  [OK]

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



