##---------------------
#Getting started
##---------------------

rm(list=ls())

help(matrix)
help.search("matrix")  
example(matrix)
demo()


##---------------------
#Operators in R
###Assignment Operators
##---------------------

x <- 2
24 -> z
y = 6

vec1 <- 3:6
vec1

vec2 <- 12:15
vec2

##--------------------
###Arithmetic Operators
##--------------------

3 + 5
18 - 7
9 * 2
24/8
6^2

a <- 9
b <- 3
a + b
a-b
a*b

calc1 <- (a+b)/(a-b)
calc1

calc2 <- (a+b)^b/(a*b)
calc2

#vectors
u <- c(6,9,2)
v <- c(2,3,-1)
w <- c(2,1)

u+v
u-v
(u*v)/(u/v)

#vectors of different length = shorter over longer until the operation is complete
u+w
v+w

#matrices
matA <- matrix(c(5,2, 4,3), nrow = 2, ncol = 2)
matA

matB <- matrix(c(1,6, 1,-1), nrow = 2, ncol = 2, byrow = TRUE)
matB

matC <- matA + matB
matC
matD <- matA - matB
matD

matE <- matA * matB
matE

matF <- matA %*% matB
matF

##------------------
###Relational Operators
##------------------

#vectors
4>5
4<5
4>4
4 >= 4
4<4
4<=4

x <- 3
y <- 6

y == x+3
# == means exactly equal

y != x+3
# != means does not equal

x != y-x

#matrices
matA != matB
matA >= matC
# >= means greater than or equal

matE == matF
matE <= matC
# <= less than or equal 

##--------------------
###Logical operators
##--------------------

stateP <- TRUE
stateD <- FALSE

## AND 
stateP & stateP
stateP & stateD
stateD & stateD

## OR
stateP | stateD
stateP | stateP
stateD | stateD

## NOT
! stateP
! stateD
stateD |! stateD

##----------------------
### Other operators
##----------------------

# :
vec1 <- 2:8
vec1

vec2 <- 20:16
vec2

vec3 <- c(1:5, 20:16, 2:8)
vec3

# ;
a <- 3; b <- 5; c <- 3
a ; b ; c

Q1 <- a + b ; Q1
Q2 <- (a+b)*(a-b) ; Q2

Q1 <- a + b ; Q2 <- (a + b)*(a - b); Q1 ; Q2

Q2 <- (a+b)*(a-b) Q2

# %in%
vecA <- c(1:5, 7:9); vecA

3%in% vecA
6%in% vecA
3:5%in% vecA
5:8%in% vecA


##---------------------
#Types of data
###Vectors
##---------------------

#Creating a vector

# c()
v1 <- c(1,2,4,8) ; v1
v2 <- c("blood","urine") ; v2

# seq()
vSeq1 <- seq(2,4, by= 0.5) ; vSeq1
vSeq2 <- seq(10,30, by = 5) ; vSeq2

# rep()
vRep1 <- rep(1:3, 2) ; vRep1
vRep2 <- rep(1:3, each = 2) ; vRep2 #Different?
vRep3 <- rep(1:3, each = 2, times = 3) ; vRep3

# each = each number repeated
# times = the sequence is repeated 

#accessing elements of a vector
measurements <- c(2, 5, 7, 16, 20, 22); measurements

#to select the third element
measurements[3]

#to select third, fourth and fifth
measurements[3:5]

#to select the first, fourth and sixth
measurements[c(1,4,6)]


actors <- c("lawyers", "prosecution", "defence") ; actors
actors[3]
actors[1:2]

#modifying elements of a vector
####making a copy or renaming a vector
readings <- measurements
readings

stakeholders <- actors
stakeholders

measurements
actors

measurementsOD <- measurements
measurementsOD

actorsOD <- actors
actorsOD

####replacing elements of a vector 
measurements[3] <- 10
measurements

actors[1] <- "judges"
actors

measurements1 <- measurements
measurements1

#replacement was already made

####adding elements to a vector
measurements <- measurementsOD
measurements

# to add an element name <- c(oldname, newvalue)

measurements <- c(measurements,30)
measurements

#to reset to initial values
measurements <- measurementsOD
measurements

c(measurements, 30)
measurements

measurements <- c(measurements ,30,38,45)
measurements

measurements <- measurementsOD

measurements[7] <-30
measurements

measurements[10] <-30
measurements

measurements[c(10,12)] <- 45
measurements

#deleting elements = name[- position number]

measurements <- measurementsOD
measurements

measurements[-2] #not assigned
measurements

measurements <- measurements[-2]
measurements

measurements <- measurementsOD
measurements[-c(4,6)] #not assigned
measurements

measurements <- measurements[-c(4,6)]
measurements

actors <- actors[-1]
actors

#------------------
### Matrices
####Creating a matrix
#------------------

## matrix() this creates a matrix 
# nrow specifies the number of rows
# ncol the number of columns

mat1a <- matrix(c(1,2,3,11,12,13), nrow = 2)
mat1a

mat1b <- matrix(c(1,2,3,11,12,13), nrow = 2, ncol = 3)
mat1b

mat1c <- matrix(c(1,2,3,11,12,13), nrow = 2, ncol = 2)
mat1c

mat2 <- matrix(c(1,2,3,11,12,13), nrow = 2, ncol = 3, byrow = TRUE)
mat2

#### Accesing elements of a matrix

# to access elements matrixname[row number, column number]

mat1b[2,2]
mat2[2,2]

# mLetters trasnforms numbers in letters in the matrix

mLetters <- matrix(LETTERS[1:9], nrow =3)
mLetters

mLetters[3, ]
mLetters[ ,3]
mLetters[3,c(2:3)]


