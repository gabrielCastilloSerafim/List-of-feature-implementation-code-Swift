//PROTOCOLS AND DELEGATES

//Protocols are pieces of code just like functions that contains certain requirements that a class or struct have to conform to, the protocols name comes on a class after a subclass or after the class's or struct's name separated by ":", or if the class has inheritance. Inside de protocols curly braces are the requirements that all the classes and structs that conform to the protocol have to conform to, these requirements are the functions that must be implemented.

//Protocols
protocol MyProtocol {
    func test()
}

                         //Struct must conform to this protocol and implement the test function
struct ConformsToProtocol: MyProtocol {
    
    func test() {
        print("I conform to the protocol")
    }
}

//Protocols can also be used as data types, for example an object that we want to pass as a function parameter can by a a protocol data type that means that the object that we pass in as a parameter must conform to the protocol of the data type.


//Initialised a object that refers to a struct that conforms to our protocol
let conformsToProtocol = ConformsToProtocol()

//Created a function that takes a parameter that has a protocol data type
func protocolDataType(parameter:MyProtocol) {
    print("This parameter conforms to the data type protocol")
}

//Called the function and passed our object that conforms to the protocol data type and that way the function has no problem initialising and printing "This parameter conforms to the data type protocol"
protocolDataType(parameter: conformsToProtocol)






