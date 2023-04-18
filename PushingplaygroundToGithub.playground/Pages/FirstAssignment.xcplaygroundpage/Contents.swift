//: [Previous](@previous)
import UIKit
import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*1. Write a function that takes a String as parameter and returns nothing. The function calculates and prints the frequency of each character in the given string, that means, how many times each character came up in the given string.

        Example input:
        let string = "Hello"
        Example Output:
        H = 1
        e = 1
        l = 2
        o = 1 */
   
let inputString = "Fahim Hasan"

var counter: [Character:Int] = [:]

for characterItem in inputString {
    var currentCount = counter[characterItem] ?? 0
    currentCount += 1
    counter[characterItem] = currentCount
    
}

print(counter)

/* 2. Write a function that returns a closure, which transforms its input by adding a particular suffix at the end.
 Example:
 let add_ly = add_suffix("ly")

 add_ly("hopeless") ➞ "hopelessly"
 add_ly("total") ➞ "totally"

 let add_less = add_suffix("less")

 add_less("fear") ➞ "fearless"
 add_less("ruth") ➞ "ruthless" */

func addSuffixFunction (suffix:String) ->((String) -> (String)) {
    let myClouser = { input in
        return input + suffix
        
    }
    return myClouser
}

let add_ly = addSuffixFunction(suffix: "ly")
let totally = add_ly("Total")
let hopelessly = add_ly ("Hopeles")
print(totally)
print(hopelessly)


let addLessToString = addSuffixFunction(suffix:"less")
let  fearless = addLessToString("Fear")
print(fearless)
    
        
