class Address {
  var fullAddress: String
  var city: String
 
  init(fullAddress: String, city: String) {
    self.fullAddress = fullAddress
    self.city = city
  }
}
 
class Person {
  var name: String
  var address: Address
 
  init(name: String, address: Address) {
    self.name = name
    self.address = address
  }
}
 
var headquarters = Address(fullAddress: "123 Tutorial Street", city: "Appletown")
var ray = Person(name: "Ray", address: headquarters)
var brian = Person(name: "Brian", address: headquarters)


//Question: what happens when we do this:
brian.address.fullAddress = "148 Tutorial Street"

/*Explanation:
So since when we first instantiated ray and brian, we passed in headquarters as the address object. This means that if we go and modify the fulladdress attribute of the address attribute, we're modifying the headquarters object. This change gets reflected across to ray's object so his address changes as well. 

Two solutions that can solve this problem:
1. We make Address a struct instead of a class so we don't worry about modifying addresses and other people getting their address changed.
2. We create a new Address object and assign it to Brian. 
*/

