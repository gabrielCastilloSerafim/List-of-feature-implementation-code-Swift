import UIKit

//Transform and round Double number to a string with specific number of decimal points, for example 4.5678456 -> "4.56" with two decimal points


let largeNumber:Double = 4.76574567

                            //Number of decimal points "2"
let result = String(format: "%.2f", largeNumber)
                                    //Number to be transformed "4.76574567"

print(result) //4.77


