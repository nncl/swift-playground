/*
 
 # About Swift

 Variables
 let = const
 var = var
 
 It's camelcase
 
 ## DO NOT EVER DO THIS
 Be careful with 🐶 <- control + command + space
 var 🐶 = something
 
 ## Signed & Unsigned
 Signed: Ok negative as well
 Unsigned: Only positive
 
 ## Types
 String, Double. Float, Int, UInt...
*/

let sentence = "Hello World" // cannot add new content cause it's constant
//let sentence : String = "Hello World"

print(sentence)

//=======
// Tuplas: collections

//var student = ("Cauê Almeida", 22, 10.0) // is gonna change soon
//var student : (String, Int, Double) = ("Cauê Almeida", 22, 10.0) // defining it
//var student : (name: String, age: Int, grade: Double) = ("Cauê Almeida", 22, 10.0) // defining it better
var student = (name: "Cauê Almeida", age: 22, grade: 10.0) // defining it so much better

//student = ("Dunha", 99.9, 1) // Fortemente tipada
student = ("Dunha", 99, 1)
print(student.0)
print(student.age)

// Arrays


