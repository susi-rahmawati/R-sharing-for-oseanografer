#
#****************************************** 3rd Meetup ****************************************
#
#
#
# Check working directory

getwd()

# Set working directory

setwd('D:/R-class')

# sources:
# http://www.sthda.com/english/wiki/r-basics-quick-and-easy
# http://scaryscientist.blogspot.com/2015/02/classification-of-data-types.html
# 

##########################################  DATA TYPES AND DATA STRUCTURE ####################################

# Variable : .......
# Object:

my_height <- 160
my_height

# Basic data types in R : integer, real, character and logical
    
seagrass_species <- 16  #integer variable
weight <- 50.5  #real variable (numeric or decimal)
species <-"thalassia" #character or string variable
# I am a scientist? (TRUE/ FALSE) #logical variable
is_scientist <- TRUE

is_scientist

seagrass <- read.csv('exampleR.csv')

dat01 <- read.csv('C:/Contoh/exampleR.csv')
dat02 <- read.table('exampleR.csv', sep=',',
                    header=T)

######### TYPE OF DATA  
#
# Qualitative/ Categorical Data 
#   - "Values or observations that can be sorted into groups or categories"

# 1. Nominal Data
#     - "labels for a particular value/observations" 
#     - Examples: 
#         Gender: male, female # Gender is a factor with 2 levels (male and female)
#         Religion: islam, protestant, chatholic, hinduism, buddhism # religion is a factor with 5 levels
#         location: biak, ternate, bintan, wakatobi
#    - nominal data does not have order or measure nominal data
#    - categorical data = factors that contain levels

summary(seagrass)
str(seagrass)       


# 2. Ordinal Data
#    - This similar to nominal data, but it has order
#    - to assigns order to nominal data: facto()
#    - Example:
#         level of Income: low class, middle class, and upper class
#         level of scientist: peneliti pertama, peneliti muda, peneliti madya, peneliti utama
#

scientist <- c("pertama", "muda", "madya", "utama")

factor_scientist <- factor(scientist, 
                           order=TRUE, 
                           levels=c("utama", "madya", "muda", "pertama"))



# Quantitative/ Numerical Data
#    - "Values or observations that can be measured. And these numbers can be placed in ascending or descending order"

# 3. discrete data
#    - "Values or observations that is counted as distinct and separate and can only take particular values"
#    - in R, discrete data = integer 
#    - Example: 
#        number of species : 1, 2, 3, 4, etc (no 4.5 species)
#        density of fish : 200, 225, 350, etc

# 4. Ratio data/ continous
#    - "Values or observations may take on any value within a finite or infinite interval"
#    - Example : weight, height, coverage, diameter of mangroves
#    - in R, ratio data= real data

str(seagrass)


############# DATA STRUCTURE 

# 1. Vector
#     -  a combination of multiple values that consist of a single data type 
#         (e.g. integer, numeric, character or logical)
#     -  c() is for concatenate    

# Example of vector:

species <- c("enhalus", "thalassia", "halophila", "cymodocea", "halodule")
species
dry_biomass <- c(9.8, 10.5, 20.1, 25, 18.9)
dry_biomass
dry_biomass [2] #individual value in a sequence (1-n)

a <- dry_biomass [2]

# 2. Matrix
#     - Combination of multiple vectors with the same data types (integerm numeric, character or logical).
#    
#     - Example of matrix:

wet_biomass <- c(12.5, 13.4, 24.5, 26.8, 20.4)
matrix_biomass <- cbind(dry_biomass, wet_biomass)
matrix_biomass
summary(matrix_biomass)

matrix_biomass [1,2] #[row,column]
matrix_biomass [,1]
matrix_biomass [2,]
matrix_biomass [1:3,] # [row 1 to 3, all column]
matrix_biomass [-2,] # [except row no 2, all column]

a <- matrix_biomass [-2,] # [except row no 2, all column]

# 3. Data Frame
#     -  "like a matrix but can have columns with different types" (e.g integer, character, and numeric)
#        
#     - Example of Data Frame:

example_data.frame <- read.csv ("exampleR.csv")
seagrass <- read.csv("exampleR.csv")
head (seagrass) # the frist 6 rows of data
head (seagrass, 10)

ls(seagrass) # variable
names (seagrass) # variable
str (seagrass)

# 4. List
#    - "collection of objects, which can be vectors, matrices, data frames"
#
#    - Example of list:
#

example_list <- list(species, seagrass)
example_list
names (example_list) <- c("vector", "data frame")
example_list

str(example_list)


########################### IMPORT DATA TO "R" ###########################

# Preparing Data

# Source: http://www.sthda.com/english/wiki/best-practices-in-preparing-data-files-for-importing-into-r

# 1. Row and Column Names
# 2. Missing Value
# 3. Naming Conventions
# 4. Final file
# 5. Saving file : .txt and .csv


########################### MISSING VALUE ###############################


a <- c(2, , 2, 2)
b <- c(2, NA, 2,2)

mean(a)
mean(b)
mean(na.omit(b))

b2 <- na.omit(b)
mean(b2)

summary(seagrass)
is.na(seagrass)

seagrass2 <- na.omit(seagrass)
is.na (seagrass2)
summary(seagrass2)

########################### CREATING SUBSET ##############################

# R script bang hendra


dat.na=read.csv('seagrass.csv', header=T, 
                na.strings = c('', 'NA'))
