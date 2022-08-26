
//Working with Structs and Classes

//STRUCTS

//Structs are like blueprints that we can create and associate to objects, having to manually create a initialiser is not required in a struct when not providing a default value to a variable like in classes, it already comes with a initialiser "built in" and in case our variables are optional it is not even required to initialise their values because they are already nil by default.
struct FirstCity {
    
    let name = "A Land"
    var population = 654
    
    func reportWeather() {
        print("Sunny")
    }
}
//Here I am creating the firstCity object and giving it the FirstCity structure's blueprint to follow and initialising it
var firstCity = FirstCity()

//Here I am accessing and changing a property of the struct
firstCity.population = 500

print(firstCity.name, firstCity.population, firstCity.reportWeather())




//Here I created a second city that does not have no default values and I also created a initialiser to it that obligates my to fill the properties with some values in order to initialise an object with its blueprint.
struct SecondCity {
    
    let name: String
    var population: Int
    
    func reportWeather() {
        print("Sunny")
    }
//This is the initialiser that will ask me for the values to associate to my structs properties
    init (name:String, population:Int){
        self.name = name
        self.population = population
    }
    
}
//Here I am creating the secondCity object and giving it the SecondCity structure's blueprint to follow and initialising it with the values that the initialiser asks me for.
var secondCity = SecondCity(name: "B Land", population: 874)

//Here I am accessing and changing a property of the struct
secondCity.population = 970

print(secondCity.name, secondCity.population, secondCity.reportWeather())





//Here I created a ThirdCity struct to demonstrate that we can also have a struct with no default value and no initialiser using the variable types as optionals.

struct ThirdCity {
    
    var name: String?
    var population: Int?
    
    //If we want to change a property of the struct from within the struct using a method we have to first place the mutating word in front of the method because a struct by default is immutable.
    mutating func reportWeather() {
        name = "C Land"
    }
}
//Here I am creating the thirdCity object and giving it the ThirdCity structure's blueprint to follow and initialising it with no initial data, if I Don't further on associate no value to the properties they will contain nil.

var thirdCity = ThirdCity()

//Here I am accessing and changing a property of the struct
thirdCity.population = 234

//Here I am calling the method to assign name to the city
thirdCity.reportWeather()

//In order to access the properties I have to do some type of unwrapping because it can contain nil.
print(thirdCity.name!, thirdCity.population!)


//CLASSES


//Classes are like structs but have inheritance and are passed by reference, classes are mutable and can inherit from another class, classes also aways need a initialiser when a variable does not have a default value.

class ClassCity {
    var name = "D Land"
    var population: Int
    
    //No need to add "mutating" in front of func
    func addToPopulation() {
        population = 366
    }
//Necessary because population does not have a default value, we only need to initialise the variables that does not have a default value
    init( population:Int) {
        self.population = population
    }
    
}

//Create object and assign and initialise population property
var classCity = ClassCity(population: 334)

classCity.addToPopulation()

print(classCity.name, classCity.population)


//Class inherits all properties and methods from superclass and on top of that has a weather property.
class ClassCity2: ClassCity {
    
    var weather = "Sunny"
}

var classCity2 = ClassCity2(population: 445)

print(classCity2.name, classCity2.weather)
