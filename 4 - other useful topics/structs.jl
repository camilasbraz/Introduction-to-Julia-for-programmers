# Structs in julia --> define other types, by default are immutable

struct MyObj
    field1
    field2
end

myobj = MyObj("Hello", "World")
myobj.field1

myobj.field1 = "teste"

#Mutable struct

mutable struct Person
    name::String
    age::Float64
end

camila = Person("Camila", 22)

camila.age = 23

camila.age

mutable struct Person2
    name::String
    age::Float64
    isActive

    function Person2(name, age)
        new(name, age, true)
    end
end

camila2 = Person2("Camila", 22)

camila2


function birthday(person::Person2)
    person.age += 1
end

birthday(camila2)

camila2.age