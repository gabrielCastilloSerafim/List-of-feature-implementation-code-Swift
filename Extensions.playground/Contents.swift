//EXTENSIONS IN SWIFT


import UIKit

//An extension is used to add functionality on to an existing data type, it can be a system data type or a class/Struct data type that we created or even protocols, in the example below we created an extension that can be applied to all Double data types, its like a built in method that we can access with dot notation that we created and appended to our default Double methods arsenal.

extension Double {
    
    func convertToString(withDecimalPoints decimal:Int) -> String {
        return String(format: "%.\(decimal)f", self)
    }
    
}

var myDouble = 3.745634

myDouble.convertToString(withDecimalPoints: 3)


//We can create extensions to protocols and define the functions that it has to adopt so that when we adopt the protocol in a class we have the function by default and wont have to manually implement it and give it its functionality.

protocol PerformFly {
    func Fly()
}

extension PerformFly {
    func Fly() {
        print("YES")
    }
}

//As we can see here we adopted the perform fly protocol and didn't have to implement the function that it demands because it already comes by default with the protocol since we created an extension for that protocol implementing the function with its functionality.
class Bird:PerformFly {
    
}

//And to prove that the Bird class does have the function we can initialise it with an object and access the Fly method to see that even tough the Bird class is empty it can perform the Fly method because it conforms to the perform fly protocol.
let testBird = Bird()

testBird.Fly()
