####Question 1:

var array1 = [1, 2, 3, 4, 5]
var array2 = array1
array2.append(6)
var len = array1.count

What is the value of the len variable?

We see that array2 is being copied from array1. We may think that if we go and modify array2, then this would change array1. However, the trick here is that since arrays in swift are value types, when we make a copy it's a new copy that has no relation to the original variable that it was copied from. So, we end up with:

array1 -> [1, 2, 3, 4, 5]
array2 -> [1, 2, 3, 4, 5, 6]

Other things in Swift that are pass by value include structs/dictionaries/enumerations/boolean/integer/float. 

Classes would be an example of a reference type.

####Question 2: 

let op1: Int = 1
let op2: UInt = 2
let op3: Double = 3.34
var result = op1 + op2 + op3

Since Swift doesn't define implicit casts between data types, even if they are conceptually idential. To fix the error we need an explicit conversion. Here, we would convert everything to Double. 
-> var result = Double(op1) + Double(op2) + op3


####Question 3:
var defaults = NSUserDefaults.standardUserDefaults()
var userPref = defaults.stringForKey("userPref")!
printString(userPref)

func printString(string: String) {
  println(string)
}

The problem here is that we are trying to used forced unwrapping on a value that could be nil. If defaults.stringForKey("userPref") returns back nil, then we can't unwrap that. 

We have two solutions:
1. let userPref = defaults.stringForKey("userPref")
  if userPref != nil {
    printString(userPref!)
  }
  
2. if let userPref = defaults.stringForKey("userPref") {
  printString(userPref)
}


Question 4:
In Swift enumerations, what's the difference between raw values and associated values?

Raw values are used to associate constant values to enum cases. Each enum case must specify a unique raw value (duplicate values are not allowed).

Example:
enum IntEnum: Int {
  case ONE = 1
  case TWO = 2
  case THREE = 3
}

var enumVar: IntEnum = IntEnum.TWO
var rawValue: Int = enumVar.rawValue 

We can also create an enum instance by doing the following:
var enumVar: IntEnum? = IntEnum(rawValue: 1)

Question 5:

var array = [AnyObject]()
struct Test {}
array.append(Test())
-->This doesn't work because the Test is a struct which is a value type and not a reference type. The error that you get is: 
"Type 'Test' does not conform to protocol 'AnyObject'.

Now, we consider this example:

var array = [AnyObject]()
array.append(1)
array.append(2.0)
array.append("3")

Why is it that there is no error reported by compiler here? 
The reason is that Swift automatically bridges 
number types to NSNumber
strings to NSString
arrays to NSArray
dictionaries to NSDictionary

Which these all happen to be reference types. 

Question 6:
Given this code:
struct Planet {
    var name: String
    var distanceFromSun: Double
}

let planets = [
    Planet(name: "Mercury", distanceFromSun: 0.387),
    Planet(name: "Venus", distanceFromSun: 0.722),
    Planet(name: "Earth", distanceFromSun: 1.0),
    Planet(name: "Mars", distanceFromSun: 1.52),
    Planet(name: "Jupiter", distanceFromSun: 5.20),
    Planet(name: "Saturn", distanceFromSun: 9.58),
    Planet(name: "Uranus", distanceFromSun: 19.2),
    Planet(name: "Neptune", distanceFromSun: 30.1)
]

let result1 = planets.map { $0.name }
What does result1 return?

Since we call the map function on our planets, this means that we're going to iterate through each Planet object in planets and get the name attribute. So our final result is going to have a list of all of the names of the planets. 

let result2 = planets.reduce(0) {$0 + $1}

Here, result2 will be an double sum of all of the planets distances from the Sun. The reduce method goes and takes elements and recursively adds them up. Or in this case, it would be how we specified the expression within the curly braces.



