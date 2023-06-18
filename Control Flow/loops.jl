# while and for loops

# while *condition*
# *loop body*
# end

# for *var* *loop iterable*
# *loop body*
# end


Fs = Vector{Any}(undef, 2);


for j = 1:2
    Fs[j] = ()->j
end

Fs[1]()
Fs[2]()

# Julia program to illustrate 
# the use of For loop
# Examples from https://www.geeksforgeeks.org/for-loop-in-julia/
  
print("List Iteration\n") 
l = ["geeks", "for", "geeks"] 
for i in l
    println(i) 
end
  
# Iterating over a tuple (immutable) 
print("\nTuple Iteration\n") 
t = ("geeks", "for", "geeks") 
for i in t
    println(i) 
end
  
# Iterating over a String 
print("\nString Iteration\n")     
s = "Geeks"
for i in s 
    println(i) 
end


# Julia program to illustrate 
# the use of Nested For-Loops
  
# Outer For-loop
for i in 1:5 
  
    # Inner For-loop
    for j in 1:i 
          
        # Print statement
        print(i, " ")
    end
    println() 
end


# Julia program to illustrate 
# the use of while loop
  
# Declaring Array
Array = ["Geeks", "For", "Geeks"]
  
# Iterator Variable
i = 1
  
# while loop
while i <= length(Array)
  
    # Assigning value to object
    Object = Array[i]
      
    # Printing object
    println("$Object")
      
    # Updating iterator globally
    global i += 1
      
# Ending Loop
end

# Julia program to generate 
# the Fibonacci sequence 
  
# The length of Fibonacci sequence
length2 = 15
  
# The first two values
a = 0
b = 1
  
# Iterator Value
itr = 0
  
# while loop condition
while itr < length2
  
   # Printing fibonacci value
   print(a, ", ")
     
   # Updating value
   c = a + b
     
   # Modify values
   global a = b
   global b = c
     
   # Updating iterator
   global itr += 1

# End of while loop
end
