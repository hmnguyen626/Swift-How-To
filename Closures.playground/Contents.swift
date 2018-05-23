/*
 Closures are self-contained chunks of code that can be passed around and used in your code.  They are almost the same as
 functions but don't have a name.
 
 https://www.weheartswift.com/closures/
*/

import UIKit

//// Traditional function method
func multiplyFunc(num1: Int, num2: Int) -> Int {
    return num1 * num2
}

multiplyFunc(num1: 3, num2: 5)

// Closure version of multiplyFunc(p1,p2)->Int{}
var multiplyClosure: (Int, Int) -> Int = { x , y in
    return x * y
}
multiplyClosure(4,5)

// Closure with two returned values
var twoReturnsClosure: (String, String) -> (String, String) = { firstName, sentence in
    return ("Hello " + firstName, ", " + sentence)
}
let name = "Hieu"
let string1 = "how are you"
let greetings = twoReturnsClosure(name, string1)
// We can access our closure with multiple returns by using dot separator and index
print(greetings.0 + greetings.1)

// Using closures to modify collections
var list: [Int] = [3,2,1,4,9,6,7,8,5,10]

list.sort(by: < ) // This sorts by ascending order

// Lets see how that works
// Sorts in descending order
let reversedList = list.sorted(by: {(x: Int, y: Int) -> Bool in
    return x > y
})

print(reversedList)

// Use closure to filter a collection of [Int]
let filteredList = list.filter { (x: Int) -> Bool in
    return x > 5
}

// Using reduce
let sum = list.reduce(0) { (x: Result, <#Int#>) -> Result in
    <#code#>
}







