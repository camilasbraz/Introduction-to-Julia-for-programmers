##### Dictionaries (not ordered, can be changed)

#Create
dictionary = Dict("Camila" => "13", "Julia" => "1")

#Add
dictionary["Belinha"] = "562017"
dictionary

#Change
dictionary["Belinha"] = "25"
dictionary

#Delete
pop!(dictionary, "Camila")
dictionary

##### Tuples (ordered, cant be changed)

# Create
myfavanimals = ("dogs", "dinossaurs", "cats")

# Acces elements
myfavanimals[1]

##### Arrays (ordered, can be changed)

# Create
fibonacci = [1, 1, 2, 3, 5, 8, 13]

# Mixed
mixArray = [1,"Camila", 2, "Julia", 5]

# Acces elements
mixArray[3]

# Add elements
push!(fibonacci, 21)

# Delete elements
pop!(fibonacci)


##### Multidimensional Arrays

# Arrays of Arrays
favs = [["pasta", "chocolate", "corn"], ["dogs", "dinossaurs", "cats"], [13, 42]]

# Rand (create Multidimensional Arrays)
rand(4, 3) #Two dimensional array

rand(4, 3, 2) #Three dimensional array
