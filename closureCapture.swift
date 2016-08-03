var things = "cars"

let closure = { [thing] in 
  print("I love \(thing)")
}

thing = "airplanes"
closure()


//What will this print out?

/* This is kind of tricky. What we have to realize is that [thing] is a capture list, and it creates a copy of thing when the closure is declared, so the captured value doesn't change even if you assign a new value to thing.  

If you omit the capture list in the closure, then the compiler uses a reference instead of a copy. In this case, if you change the variable then that'll be reflected when the closure is invoked.
*/

var thing = "cars"

let closure = {
  print("I love \(thing)")
}

thing = "airplanes"

closure() //prints out "I love airplanes"
