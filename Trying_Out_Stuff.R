
# NOTE: seq() creates a vector



z <- seq(from = -2, to = 2, by = 0.2)
z
z[6]
typeof(z)
is.vector(z)

v <- c(-20:12)
v[5]
typeof(v)
is.vector(v)

v <- -20:12
v[5]
typeof(v)
is.vector(v)