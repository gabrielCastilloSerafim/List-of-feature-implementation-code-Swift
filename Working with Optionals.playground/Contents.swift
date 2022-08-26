
//WORKING WITH OPTIONALS


let myOptional: Int?

myOptional = 5


//Force Unwrapping

print(myOptional!) /* In this case we tell the computer that this optional value is never going to be                    nil, but in case it is nil than the app would break. */



//Check for nil value

if myOptional != nil { /* In this case we first check if the value of my optional is
                          nil to than safely force unwrap it. */
    print(myOptional!)
}



//Optional Binding

if let safeOptional = myOptional { /* In this case we say that if the myOptional is not nil associate                                    it's value to the value of a new variable called safeOptional                                      that we can safely work with inside our if statement without                                       having to force unwrap it. */
    print(safeOptional)
}



//Nil coalescing Operator

print(myOptional ?? 5) /* In this case we take the optional and say that if its value is nil then                         assign its value to the value that comes after the ??. */




//Optional Chaining

//It is used to access properties and methods of a struct or class when it is set to a optional type

struct MyStruct {
    var property = 123
    func method() {
        print("I am the struct's method.")
    }
}

//Create a miStruct variable and set its data type to be a MyStruct? "the struct that we have created" optional data type, it means that the our structs values can be nil or not.
let myStruct: MyStruct?

//Assign the myStruct to be equal our struct and then have all its methods and properties
myStruct = MyStruct()

//In order to safely access our properties and methods we have to place the ? after our myStruct variable since it is an optional, what the question mark does is that is only allows the access to the property if the myStruct's variable value is not nil.
print(myStruct?.property)
print(myStruct?.method())
