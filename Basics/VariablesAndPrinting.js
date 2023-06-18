println("Hello Julia")

# Variable assignment
# dynamic assignment
ans = 42
typeof(ans)

pi = 3.14159
typeof(pi)

str = "Julia is awesome"
typeof(str)

😸 = "An emoji variable"

# Comments are done using hashtags

# Basic math
sum = 11 + 3
difference = 15 - 4
product = 20 * 5
quotient = 7/9
power = 10 ^ 2
modulus = 101 % 2


#Exercises 1

# 1.1

#https://docs.julialang.org/en/v1/manual/conversion-and-promotion/

x = 12
typeof(x)

xu = convert(UInt8, x)
typeof(xu)


xf = convert(AbstractFloat, x)
typeof(xf)


 a = Any[1 2 3; 4 5 6]
convert(Array{Float64}, a)

# 1.2

days = 365
days_float = convert(AbstractFloat, days)
typeof(days_float)

@assert days == 365
@assert days_float == 365.0
