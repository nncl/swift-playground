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
/*
let arrInt = [33,45,2,7,19,29,99,0,6]
arrInt.sort()

let arrStr = ["Cauê", "Anna", "Day"]
arrStr.sort()
//arrStr.sort(by: >)
*/
let arrTuple = [
    ("Cauê", 22),
    ("Johnior", 33),
    ("Day", 21),
    ("Claire", 44),
    ("Clive", 52),
    ("Clyde", 12)
]

// Define a strategy on how to order it, by what field. Not closure yet hehe
// arrTuple.sort(by:{$0.0 < $1.0}) // Always earlier items need to be lower than the next one, this is our =tegy. Functional Programming

//let firstLetterArray = arrStr.map({String($0.characters.first!)}) // $0 = array item. ! = same as toString()
//print(firstLetterArray)

// ## Swift Optionals

var test: Double // cannot do this
var test2: Double? // means that this variable is optional, so this var is an Double Optional

test2 = 29
// print(test2)
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
    var email : String! // do not do this, just if you know it's certain, Implicit Unwrapper Optional
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

user?.sayName()

let userClone = user ?? Person(name:"Cauê Almeida") // kind of ternary operator
*/

// # Operators
// We can create our OWN operators, and we CAN modify already existent, such as + turns out into *. GREATER POWER == GREATER RESPONSABILITIES

// Pre & Post sufix
// !true = not - prefix

// Creating operator
//infix - between two numbers
// prefix - before
// postfix - after

/* It works but does not right now
infix operator + {} // newer swift we do not need these {}
func + (left: Int, right: Int) -> Int {
    return left * right
}

print(9+9)

infix operator >-< {}
func >-< (left: Int, right: Int) -> Int {
    return left * right
}

print(9>-<9)
*/


// ======================
// CLASS 2 = DICTIONARIES
// ======================

// OR states: [String: String] = [
var states = [
    "SP" : "São Paulo",
    "PR" : "Paraná",
    "SC" : "Santa Catarina",
    "RS" : "Rio Grande do Sul"
]

// Empty - [key type, value type]
var list : [String: Int] = [:]

// Getting item from dictionary
let prName = states["PR"]

// Optional binding
if let spName = states["SP"] {
    print(spName)
}

// Remove item from dictionary
states["RS"] = nil

// Count
states.count

// Iterating dictionary

for state in states {
    print(state) // damn it's a tuple
}

for (uf, name) in states {
    print(uf, name) // damn it's a tuple
}

// Decomposuing touple

let address = ("Avenue", "Paulista", 1000, "7th Floor")
print(address)

let (type, street, number, complement) = address
print(street)

// What if we want just street and complement??
let (_, street2, _, complement2) = address
print(complement2)

// ======================
// Conditionals
// ======================

// if/else statement
let grade = 10,
    climate = 0;

if grade >= 10 {
    print("Gotcha bro")
} else if (grade < 10 && grade > 2) {
    print("Kind of dough")
} else {
    print("Ooooops! Keep it simple stupid")
}

grade == 10 ? print("Yeap") : print("Errr")

// ======================
// Switch
// ======================

let letter = "a";
switch letter {
case "a":
    print("Vowel")
case "e":
    print("Vowel")
case "i":
    print("Vowel")
case "o":
    print("Vowel")
case "u":
    print("Vowel")
default:
    print("Consoant")
}

let letter2 = "c";
switch letter2 {
case "a","e","i","o","u":
    print("Vowel")
default:
    print("Consoant")
}

// Ranges
let speed: Double = 100.0
switch speed {
case 0.0..<20.0: // til 19.99999, does not include 20
    print("1st")
case 20.0..<40.0:
    print("2nd")
case 40.0..<60.0:
    print("3rd")
default:
    print("Death")
}

// ======================
// Flow Control - Loop
// ======================

var cars = [
    "Porsche",
    "Audi",
    "BMW",
    "Jaguar",
    "Ferrari"
]

for car in cars {
    print(car)
}

// Enumerate - as a tuple - each array's element
for car in cars.enumerated() {
    print(car, car.0, car.1)
}

for (index, car) in cars.enumerated() {
    print(index, car)
}

// FOR IN in ranges

for value in 1...19 {
    value // check right side graphic
    print(value)
}

for index in stride(from: 0, to: 100, by: 3) {
    index
}

// ======================
// While
// ======================

var count = 0;
while count > 19 {
    print(count)
    count+=1
}

repeat {
    count -= 1
    print(count)
} while count > 1

// ======================
// Enum
// ======================

enum Compass {
    case north
    case south
    case east
    case west
}

// Adding values for an Enum: raw type

enum weekDays: String {
    case sunday
    case monday = "Segunda-feira"
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
}

print(weekDays.sunday.rawValue)
print(weekDays.monday.rawValue)

// OR

enum Months {
    case january, february, march, april, may, jun, july, august, september, october, november, december
}

enum MonthsEnumerated: Int {
    case january = 1, february, march, april, may, jun, july, august, september, october, november, december
}

print(MonthsEnumerated.november.rawValue) // 11 \o/

let sunday = weekDays(rawValue: "Domingo") // nil

if let monday = weekDays(rawValue: "Segunda-feira") {
    print(monday) // OK
}








