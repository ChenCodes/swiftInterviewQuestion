import UIKit

var view1 = UIView()
view1.alpha = 0.5

let view2 = UIView()
view2.alpha = 0.5  //Will this line compile?

/*First, the difference between var and let is that when you assign a variable using let, this means that the variable cannot be assigned to another value. The trick here is that UIView is a class with reference semantics, so you are able to mutate properties of view2 (change the alpha value), so it will actually compile. 

