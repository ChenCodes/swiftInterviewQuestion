let animals = ["fish", "cat", "chicken", "dog"]

let sortedAnimals = animals.sort { (one: String, two: String) -> Bool in 
  return one < two
}

/*There are many ways to simplify this chunk of code.

First, the return type can be inferred so we get rid of that.
let sortedAnimals = animals.sort {(one, two) in return one < two }

Next, we can use $i to substitute parameter names.
let sortedAnimals = animals.sort { return $0 < $1 }

Since in single statement closures, the return keyword can be omitted. 
let sortedAnimals = animals.sort { $0 < $1 }

There actually happens to be a comparison function for strings...
func <(lhs: String, rhs: String) -> Bool

So at the end, this is the result:
let sortedAnimals = animals.sort(<)

Wow.
*/
