

//USEFUL SWIFT BUILT IN FUNCTIONS


//Example array
var array = [1,2,3,4,5]


//MAP FUNCTION (Takes a function as input to perform it in every item of an array, but does not actually change our array it returns a new one).

//In this case we are adding one to every item of the array and instead of passing a function as a parameter we are using a closure as the function input
let plusOneArray = array.map({$0 + 1})

print(plusOneArray)

//In this case we are transforming every item of a array into a string
let stringArray = array.map({"\($0)"})

print(stringArray)





//FILTER (filters a given array by the specified parameter and returns a new array with the filtered items)

//Filters the map to return only numbers that are not grater than 3
let lessThan3 = array.filter({$0 < 3})

print(lessThan3)





//REDUCE (reduces the array to a single value taking two parameters a initial value that we want to take of for and a operator)


//Sums all numbers of the array and adds it to zero that is our initial value
                        //Initial value, operator
let sumAll = array.reduce(0, +)

print(sumAll)
