//Consider the following:

struct Tutorial {
  var difficulty: Int = 1
}

var tutorial1 = Tutorial()
var tutorial2 = tutorial1
tutorial2.difficulty = 2

//What is the value of tutorial1.difficulty and tutorial2.difficulty?

/*First let's run through the code: 
tutorial1 is assigned to a Tutorial object of struct type. 
tutorial2 is assigned to the value that was copied over from tutorial1.
We update tutorial2's attribute difficulty to 2. This means that the result is:*/

//tutorial1.difficulty -> 1
//tutorial2.difficulty -> 2

/*Here's the explanation: 
Structures in Swift are value types, so they are copied by value rather than by reference. 
In this line:      var tutorial2 = tutorial1, the value from tutorial1 is copied over and assigned to tutorial2. Thus
any change to tutorial2 will not be reflected by tutorial1.*/

/*Now, consider if Tutorial was instead a class. What would happen?
If Tutorial was a class, things are passed by reference. Thus, changes to tutorial2 would reflect a change to tutorial1 and vice versa. */
