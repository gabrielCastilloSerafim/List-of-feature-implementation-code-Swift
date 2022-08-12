//THIS IS A WAY TO ASSING OPERATORS TO VARIABLES


var multiplication:(Double, Double) -> Double = (*)
var sum:(Double, Double) -> Double = (+)
var subtraction:(Double, Double) -> Double = (-)
var division:(Double, Double) -> Double = (/)


print(multiplication(2,3))  // = 6.0
print(sum(2,3))             // = 5.0
print(subtraction(2,3))     // = -1.0
print(division(2,3))        // = 0.6666666666666666
