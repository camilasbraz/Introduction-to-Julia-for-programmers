A = rand(1:4, 3, 3)
#B and A points to the same place in memory
B = A
#New variables
C = copy(A)

[B C]

A[1] = 17

x = fill(1.0, (3,))

b = A * x

# Transposition
A'
transpose(A)


Asym = A + A'
Apd = A'A


# Solvingl linear systems

A \ b


# Exercises
# Take the inner product (or "dot" product) of a vector `v` with itself and assign it to variable `dot_v`.
v = [1, 2, 3]
dot_v = inner_product = sum(v .* v)
@assert dot_v == 14

# Take the outer product of a vector v with itself and assign it to variable `outer_v`
outer_v = v * v'
@assert outer_v == [1 2 3
    2 4 6
    3 6 9]

# Use LinearAlgebra.cross to compute the cross product of a vector v with itself and assign it to variable `cross_v`
using LinearAlgebra
cross_v = cross(v, v)
@assert cross_v == [0, 0, 0]