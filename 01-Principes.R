## ----func--------------------------------------------------------------------------------------------
8+2

8-2

8*2

8/2

8**2

8**(1/2)

log(10)

log10(10)

sqrt(10)

sin(pi)

cos(pi)

tan(pi)


## ----elem numeric------------------------------------------------------------------------------------
x<-8
y<-2

x+y
x*y
x**y



## ----elem charact------------------------------------------------------------------------------------
x<-"Bonjour"
y<- "tout le monde"
z<- "!"
paste(x,y,z)
substr(x,1,3)


## ----elem logic--------------------------------------------------------------------------------------
x<-TRUE
y<-FALSE

x & y
x | y 


## ----vecteurs----------------------------------------------------------------------------------------
x <- c(1,2,4,8,16)
y <- 4
x+y
x*y
x**y


## ----matrices----------------------------------------------------------------------------------------

# deux vecteurs
x1 <- c(1,2,4,8,16)
x2 <- c(5,10,15,20,25)

# matrice en colonnes
m1 <- cbind(x1,x2)
m1

# matrice en lignes
m2 <- rbind(x1,x2)
m2

# piège !
m3 <- c(x1,x2)
m3
is.matrix(m3)


## Si on assemble deux vecteurs à l'aide de la commande `c()`on obtient un vecteur et pas une matrice.


## Les `vecteurs` regroupent des `éléments de même type` tandis que les `listes` regroupent des `éléments ou des objets de type quelconque`. Le type liste est donc beaucoup plus général, mais aussi plus difficile d'emploi.

## 
## On peut comparer une liste à un *panier de course* dans lequel on mélange des choux, des carottes, des navets, une boîte de douze oeufs, un paquet de croquettes pour chiens, etc...


## ----listvec-----------------------------------------------------------------------------------------
# Format vecteur
prenom <- c("Ali", "Amine",
    "Anne","Marc","Zayneb")
sexe <- c("H","H","F","H","F")
age  <- c(21,22,24,18,25)


# Format liste
Ali <- list("H",21)
Amine <- list("F",22)
Anne <- list("F",28)
Marc <- list ("H",18)
Zayneb <- list("F",25)

# Ne pas confondre !
Ali <- c("H",21)
Ali
Ali <- list("H",21)
Ali


## ----typevar-----------------------------------------------------------------------------------------
# Format charactère
prenom <- c("Ali", "Amine","Anne",
            "Marc","Zayneb")
str(prenom)

# Format logique
likeR <- c(TRUE,FALSE, TRUE,
           FALSE, FALSE)
str(likeR)
# Format Factor
sexe <- c(1,1,2,1,2)
sexe<-as.factor(sexe)
levels(sexe) <-c("Homme","Femme")
str(sexe)

# Format numerique
age  <- c(21,22,24,18,25)
str(age)

# Format date
nais<-c("1999-10-28","1998-10-13",
 "1996-10-15","2002-02-07","1995-06-18")
nais<-as.Date(nais)
str(nais)


## ----dataframe---------------------------------------------------------------------------------------
# Création d'un data.frame
tab1<-data.frame(prenom,nais,
                age,sexe,likeR)
str(tab1)


## ----tibble------------------------------------------------------------------------------------------
# Création d'un tibble
library(tidyr, quiet=T)
tab2<-tibble(prenom,nais,
            age,sexe,likeR)
str(tab2)



## ----datatable---------------------------------------------------------------------------------------

# Création d'un data.table
library(data.table, quiet=T)
tab3<-data.table(prenom,nais,
                age,sexe,likeR)
str(tab3)


## R est un langage de programmation multifonction qui évolue depuis maintenant plus de 30 ans et auquel s'ajoutent continuellement de nouveaux packages. A la différence de SPSS, il n'est pas spécialisé uniquement en statistique, même si le coeur du logiciel est bien centré sur la statistique. Pour progresser rapidement en R il est indispensable :

## 
## - de prêter une grande attention aux types de `variables et de tableaux.`

## - de ne pas chercher à utiliser trop vite de nouveaux packages tant que l'on n'a pas acquis une pratique suffisante du `R-Base`.

## - de consulter la `documentation` et les `forums de discussion` en cas de difficulté.

## 

## ----echo=FALSE--------------------------------------------------------------------------------------
x <- c("Paris", "Londres","Tokyo","New York")
x


## ----eval=FALSE--------------------------------------------------------------------------------------
## x <- c("Paris", "Londres","Tokyo","New York")


## ----echo=FALSE--------------------------------------------------------------------------------------
y <- c("France", "Royaume-Uni","Japon","USA")
y


## ----eval=FALSE--------------------------------------------------------------------------------------
## y <- c("France", "Royaume-Uni","Japon","USA")


## ----echo=FALSE--------------------------------------------------------------------------------------
z <- c(10.2, 14.6,42.8,23.9)
z


## ----eval=FALSE--------------------------------------------------------------------------------------
## z <- c(10.2, 14.6,42.8,23.9)


## ----echo=FALSE--------------------------------------------------------------------------------------
m1<-rbind(x,y)
m1


## ----eval=FALSE--------------------------------------------------------------------------------------
## m1<-rbind(x,y)


## ----echo=FALSE--------------------------------------------------------------------------------------
df<-data.frame(y,x,z)
df


## ----eval=FALSE--------------------------------------------------------------------------------------
## df<-data.frame(y,x,z)


## ----eval=FALSE--------------------------------------------------------------------------------------
## conjoint1 <- c(1200, 1180, 1750, 2100)
## conjoint2 <- c(1450, 1870, 1690, 0)
## nb_personnes <- c(4, 2, 3, 2)


## ----eval=FALSE--------------------------------------------------------------------------------------
## revenu_total <- conjoint1 + conjoint2
## revenu_total / nb_personnes

