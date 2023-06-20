# https://julialang.org/packages/

#sThe first time you use a package on a given Julia installation, you need to use the package manager to explicitly add it:


using Pkg

Pkg.add("Plots")
using plots

Pkg.add("Example")
using Example
hello("it's me. I was wondering if after all these years you'd like to meet.")

Pkg.add("Colors")
using Colors
palette = distinguishable_colors(100)
rand(palette, 3, 3)


# Exercises
# Load the Primes package (source code at https://github.com/JuliaMath/Primes.jl ).
# Verify that you can now use the function primes to grab all prime numbers under 1,000,000 and store it in variable primes_list
Pkg.add("Primes")
using  Primes
@assert @isdefined Primes
primes_list = Primes.primes(1000000)
@assert primes_list == primes(1000000)