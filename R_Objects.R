# ATOMIC VECTORS----

die <- c(1, 2, 3, 4, 5, 6)
die
is.vector(die)
length(die)

# VECTOR OF LENGTH 1----
five <- 5
five
is.vector(5)
length(five)

# Atomic vectors can only store one type of data

# BASIC VECTOR TYPES
#  doubles, integers, characters, logicals, complex, raw

typeof(five)
typeof(die)

#  For type integer include a capital L with input

int <- 3L
typeof(int)
# "integer"

ints <- c(1L, 2L, 3L)
typeof(ints)
# "integer"


text <- c("Ace", "King")
typeof(text)

# Operations on vectors depend on type of element

sum(ints) # OK

sum(text) # FAIL

# DOUBLES
# stores regular numbers e.g.1, 2, 6, 5.7 -0.04
typeof(c(1, 2, 6, 5.7 -0.04))
# Accurate to about 16 dec. places 
# be warned ..
sqrt(2)^2 - 2
# does not equal 0 because sqrt(2) not accurate in 16 places



# INTEGERS
#  As above use L
ints <- c(2L, 7L, -2L)
ints
typeof(ints)

# CHARACTERS
text <- c("HELLO", "world")
text
# type is characters

# LOGICALS

logic <- c(FALSE, TRUE, TRUE, FALSE)
typeof(logic)
#  "logical"
#  R ASSUMES T AND F STAND FOR TRUE AND FALSE
logic2 <- c(F, T, T, F)
typeof(logic2)
#  "logical"


# COMPLEX AND RAW
# Complex are comple numbers

comp <- c(1 + 2i, 3 - 4i)
typeof(comp)
comp * comp
# produces answer -3+ 4i -7-24i (work it out!)



# Raw data gets complicated as it stores bytes of data
raw(34.3)
#  produces [1] 00 00 00
raw(3)


# HEX NUMBERS
# Precede number by 0x e.g. 0x55
hex <- 0x34
hex



# BUILT-IN CONSTANTS

pi
LETTERS
letters
month.name
month.abb


#  See also ?Constants
# e is not define but exp(1) gives e
exp(1)
e <- exp(1)
j <- c(0 + i)

# Euler's formula
e ^ (j * pi)

# See also:
?plotmath


sin(pi/3)

#  See ?Trig for built-in trig functions

# T0 VIEW ALL built-in functions run builtins()
builtins()
# Note Natural log is log equivalent to ln
log(e)

#  Log to base 10 is log10
log10(100)

#  .... and in general log(x, base) 

# Apparently less confusing list is:  
ls(baseenv(), all = TRUE)



