//CLOSURES


//Closures are like anonymous functions or functions without a name


//We can pass functions as parameters for other functions


//Here we have a function that has two ints as parameters and adds them to return the sum of these two ints that is a Int data type as well.
func sum(n1:Int, n2:Int) -> Int {
    return n1 + n2
}

//Here this function has two its as parameters and the third parameter is a function that has the same structure as the one we created above
func calculator (no1:Int, no2:Int, operation:(Int, Int) -> Int ) -> Int {
    //Here we call the function parameter passed to our calculator function and use no1 and no2 as the parameters for this function.
    return operation(no1, no2)
}

//Here we call the calculator function and pass our sum function as the parameter to the function as it can be taken because it has a the same structure that our input takes.
calculator(no1: 2, no2: 3, operation: sum)


//With closures we can simplify the amount of code that we are writing by instead of creating a function to sum the parameters of the function and then calling it on the calculator function we can directly pass the function in a form of a closure like below

calculator(no1: 2, no2: 3, operation: {$0 + $1})

//In the example above we can see that the closure {$0 + $1} entered in to fill the function parameters space because it is already a function, the closure goes inside of curly braces "{}" and the dollar sing "$0" represents the first input and the "$1" represents the second and so on.
