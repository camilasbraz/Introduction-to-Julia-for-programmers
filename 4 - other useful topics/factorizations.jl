using LinearAlgebra

A = rand(3, 3)
x = fill(1, (3,))
b = A * x

# - Factorizations
# LU
Alu = lu(A)
typeof(Alu)
Alu.P
Alu.L
Alu.U
Alu \ b
det(A) ≈ det(Alu)

# QR 
Aqr = qr(A)
Aqr.Q
Aqr.R

# Eigendecompositions
Asym = A + A'
AsymEig = eigen(Asym)
AsymEig.values
AsymEig.vectors
inv(AsymEig) * Asym

# - Special matrix structures
n = 1000
A = randn(n, n);
Asym = A + A'
issymmetric(Asym)
Asym_noisy = copy(Asym)
Asym_noisy[1, 2] += 5eps()
issymmetric(Asym_noisy)
Asym_explicit = Symmetric(Asym_noisy);
@time eigvals(Asym);
@time eigvals(Asym_noisy);
@time eigvals(Asym_explicit);
n = 1_000_000;
A = SymTridiagonal(randn(n), randn(n - 1));
@time eigmax(A)

# - Generic linear algebra
1 // 2
Arational = Matrix{Rational{BigInt}}(rand(1:10, 3, 3)) / 10
x = fill(1, 3)
b = Arational * x
Arational \ b
lu(Arational)

# Exercises
# What are the eigenvalues of matrix A?

A =
    [
        140 97 74 168 131
        97 106 89 131 36
        74 89 152 144 71
        168 131 144 54 142
        131 36 71 142 36
    ]
# and assign it a variable `A_eigv`

A_eigv = eigvals(A)
@assert all(isapprox(A_eigv, [-128.4932276480215, -55.887784553056875, 42.75216727931892, 87.16111477514524, 542.4677301466141], atol=1e-8))

# Create a `Diagonal` matrix from the eigenvalues of `A`.
A_diag = Matrix(Diagonal(A_eigv))
@assert A_diag == [-128.493 0.0 0.0 0.0 0.0
    0.0 -55.8878 0.0 0.0 0.0
    0.0 0.0 42.7522 0.0 0.0
    0.0 0.0 0.0 87.1611 0.0
    0.0 0.0 0.0 0.0 542.468]

# Create a `LowerTriangular` matrix from `A` and store it in `A_lowertri`

A_lowertri = LowerTriangular(A)
@assert A_lowertri == [140 0 0 0 0
    97 106 0 0 0
    74 89 152 0 0
    168 131 144 54 0
    131 36 71 142 36]