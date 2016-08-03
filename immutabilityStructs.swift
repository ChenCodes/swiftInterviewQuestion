public struct ThermometerStruct {
  private(set) var temperature: Double = 0.0
  public mutating func registerTemperature(temperature: Double) {
    self.temperature = temperature
  }
}
 
let thermometerStruct = ThermometerStruct()
thermometerStruct.registerTemperature(56.0)


//Why does this code fail to compile?

/*First, we know that the method registerTemperature has been declared correctly with the use of the word mutating. However,  the problem results in an error because the instance that we call the method with needs to be mutable. Since we declared it with the let keyword, this code will fail to compile. 

In structures, methods that change the internal state must be marked as mutating but invoking them from immutable variables is not allowed. 
*/

