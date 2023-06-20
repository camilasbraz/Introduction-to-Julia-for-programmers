# How to declare a function:

function sayhi(name)
    println("Hi $name, great to see you!")
end

function f(x)
    x^2
end

sayhi("R2-D2")

f(42)

# Declare using single lines:
sayhi2(name) = println("Hi $name, great to see you!")
sayhi2("C3P0")

# anonymous function:
sayhi3 = name -> println("Hi $name, great to see you!")
sayhi3("Chewbacca")


# Duck-typing in Julia
# If it walks like a duck and quacks like a duck, it is a duck
# Julia functions will work on whatever inputs make sense

sayhi(45691)

# Works on a matrix (returns the square of each number)
A = rand(3,3)
f(A)

# Does not work on a vector (the meaning of V^2 is ambiguous)
V = rand(3)
f(V)


# Mutating vs non-mutating functions:
# returns an altered version of the input vs do not alter
V = [3, 5, 2]
sort(V)
V

sort!(V)
V

# Broadcasting:
# f.() will broadcast the elements of the input objects

M = [i+3*j for j in 0:2, i in 1:3]
#f(M) = A * A
f(M)
#f.(M) = square of each number
f.(M)

# f does not work on V, but f. does
f.(V)