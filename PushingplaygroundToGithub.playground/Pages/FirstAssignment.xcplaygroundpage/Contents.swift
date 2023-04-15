//: [Previous](@previous)

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
   

    func WithParameterAndnoReturnType(name:String)  {
       
        var items:[String:Int]=[:]
        
        for str in name {
            let key = String(str)
            
            let value = items[key] ?? 0
            items [key]=value+1
            
            
        }
        
        for (key,value)in items {
            print("\(key)=\(value)")
        }
}

let fahimhasan = "FahimHasan"
WithParameterAndnoReturnType(name:fahimhasan)
print ("")


/* 2. Write a function that returns a closure, which transforms its input by adding a particular suffix at the end.
 Example:
 let add_ly = add_suffix("ly")

 add_ly("hopeless") ➞ "hopelessly"
 add_ly("total") ➞ "totally"

 let add_less = add_suffix("less")

 add_less("fear") ➞ "fearless"
 add_less("ruth") ➞ "ruthless" */


        
        func add_suffix(_ suffix: String) -> (String) -> String {
            
            return {
                (contents: String) -> String in
                return contents + suffix;
            }
        }
        
        func add_suffix_2(_ suffix: String) -> (String) -> String {
            
            return { $0 + suffix}
        }
        
        
        let add_ly = add_suffix("ly")
        
        print(add_ly("hopeless"))
        print(add_ly("total"))
        
        
        
        let add_less = add_suffix("less")
        
        print(add_less("fear"))
        print(add_less("ruth"))
        
