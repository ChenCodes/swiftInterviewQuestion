Question 1:
What is the Swift programming language?

Swift is a programming language for creating applications for iOS.

Question 2:

How do you define variables in Swift language?
Variables and constants must be declared before they are used. Constants are declared with the let keyword and variables with the var keyword. 

Question 3:
What are some of the features of Swift programming?
-it eliminates entire classes of unsafe code
-variables are always initialized before use
-arrays and integers are checked for overflow
-memory is managed automatically
-swift uses the switch function rather than the if statement

Question 4:
What are floating point numbers and what are the types of floating number in Swift?

Floating numbers are numbers with a fractional component, like 3.24.

Floating point types can represent a wider range of values than integer types. 
Double -> represents a 64 bit floating point number, it's used when floating point values must be very large.
Float -> represents a 32 bit floating point number, used when floating point doens't need 64 bit precision

Question 5:
What are the collection types available in Swift?

Array: 
They can be defined as:
  var cardName : [String] = ["Robert", "Lisa", "Kevin"]
  ^This means that the array can only hold types of strings?
  
Interesting scenario:
var cardName = [AnyObject]()
cardName.append(43)
cardName.append("hello")
print(cardName[0] as! Int + 1)
Since if we don't force downcast, then it won't work.
  
Dictionary: 
var cards = ["Robert": 22, "Lisa":24]


Question 6:
What are lazy properties and when are they useful?
Lazy stored properties are used for a property whose initial values is not calculated until the first time it's used. 

Example:

class Person {
  var name: String
  
  lazy var personalizedGreeting: String = {
    [unowned self] in 
    return "Hello, \(self.name)!"
    }()
    
  init(name: String) {
    self.name = name
  }
}

^The unowned self thing is a strong reference, since when we assign a class instance to a property, constant, or variable, it makes a strong reference. It's called a strong reference because it keeps a firm hold on the instance and makes sure it's not deallocated.

Here, in this example, we see that the personalizedGreeting property can be lazily instantiated after the object is created so that it can contain the name of the person. 

















