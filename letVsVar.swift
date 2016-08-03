import UIKit
 
var view1 = UIView()
view1.alpha = 0.5
 
let view2 = UIView()
view2.alpha = 0.5 // Will this line compile?

/* Here's the explanation. Let means that once a variable has been assigned to a value, it can no longer be reassigned to another value. However, in this case, we see that the view2.alpha actually compiles because UIView is a class with reference semantics, meaning that the properties can be mutated. 
*/
