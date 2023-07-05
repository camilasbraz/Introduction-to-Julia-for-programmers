# Multiple dispatch makes software extensible, programmable, fun to play with and fast!

methods(+)

@which 3 + 3
@which 3.0 + 3.0
@which 3 + 3.0

# Extend methods

import Base: +

"hello " + "world!"

@which "hello " + "world!"

+(x::String, y::String) = string(x, y)

"hello " + "world!"

@which "hello " + "world!"

foo(x, y) = println("duck-typed foo!")

foo(x::Int, y::Float64) = println("foo with integer and float!")

foo(x::Float64, y::Float64) = println("foo with two floats!")

foo(x::Int, y::Int) = println("foo with two integers!")

foo(1, 1)
foo(1.0, 1.0)
foo(1.0, 1)
foo(1, 1.0)
foo(true, false)