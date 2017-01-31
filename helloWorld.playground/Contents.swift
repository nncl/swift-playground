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
    ("Day", 21),
    ("Claire", 44),
    ("Clive", 52),
    ("Clyde", 12)
]

// Define a strategy on how to order it, by what field. Not closure yet hehe
// arrTuple.sort(by:{$0.0 < $1.0}) // Always earlier items need to be lower than the next one, this is our strategy. Functional Programming

let firstLetterArray = arrStr.map({String($0.characters.first!)}) // $0 = array item. ! = same as toString()
print(firstLetterArray)

// ## Swift Optionals

var test: Double // cannot do this
var test2: Double? // means this variable is optional, so this var is an Double Optional

test2 = 29
print(test2)
print(test2!) // Desembrulhando o optional - Modo VIDA LOKA, pq não verifica se tem valor antes de desembrulhar

// Use Optional Binding instead
if let testValue = test2 {
    print(testValue)
}

// Doesn't make any sense do this, cause we were trying to avoid u know, right?!
if let _ = test2 {
    print(test2!)
}

if test2 != nil {
    print(test2!)
}

// Embrulhar?????!!!!! en-US????? Un as well

// With 'if let' you cannot access that variable anymore in another place, cause it just exists there, so, to do that:

// guard let testValue = test2 else {/*TODO logic here*/return} // has to return, otherwise we cannot guarantee that testValue'll receive a value

//testValue

// guard let is many used in form validations

class Person {
    var name : String
    init(name: String){
        self.name = name
    }
    
    func sayName() {
        print("My name is", name)
    }
}

// do not use + as concatenation
let firstName = "Cauê"
let lastName = "Almeida"
let myAge = 22
let phrase = "My name is \(firstName) \(lastName) and I'm \(myAge)"
print(phrase)

// we cannot do that w/ optional???? or is it about '+' concatenation??

/* It works but not in this xcode version, which is 7.3.1
var user = Person?
user = Person(name: "Cauê")

print(user?.sayName())
*/


