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
// Tuple: collections

//var student = ("Cauê Almeida", 22, 10.0) // is gonna change soon
//var student : (String, Int, Double) = ("Cauê Almeida", 22, 10.0) // defining it
//var student : (name: String, age: Int, grade: Double) = ("Cauê Almeida", 22, 10.0) // defining it better
var student = (name: "Cauê Almeida", age: 22, grade: 10.0) // defining it so much better

//student = ("Dunha", 99.9, 1) // Fortemente tipada
student = ("Dunha", 99, 1)
print(student.0)
print(student.age)

// ## Arrays
// ### Defining it
var grades : [Double] = [10,4.5,7,8.8]
let grades2 : [Double] = []
let grades3 = [0,4,9]
//let grades4 = [] // Error, cause there is no type
let grades4 = [Double]()

grades[3] = 10
print(grades)
// Add new one at the final of this array
grades.append(7)
//grades.remove(at: 2)

// Order an array
let arrInt = [33,45,2,7,19,29,99,0,6]
arrInt.sort()

let arrStr = ["Cauê", "Anna", "Day"]
arrStr.sort()
//arrStr.sort(by: >)

let arrTuple = [
    ("Cauê", 22),
    ("Johnior", 33),
    ("Claire", 44),
    ("Clive", 52),
    ("Clyde", 12)
]

// Define a strategy on how to order it, by what field. Not closure yet hehe
// arrTuple.sort(by:{$0.0 < $1.0}) // Always earlier items need to be lower than the next one, this is our strategy


