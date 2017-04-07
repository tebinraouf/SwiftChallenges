//: Playground - noun: a place where people can play
//Credit:- https://www.letsbuildthatapp.com/


import UIKit

func mostCommonName(array: [String]) -> String {
    
    let count = 1
    var nameDictionary = [String: Int]()
    
    for name in array {
        if let count = nameDictionary[name] {
            nameDictionary[name] = count + 1
        }else{
            nameDictionary[name] = count
        }
    }
    
    var mostCommonName = ""
    for key in nameDictionary.keys {
        if mostCommonName == "" {
            mostCommonName = key
        }else{
            let countName = nameDictionary[key]!
            if countName > nameDictionary[mostCommonName]! {
                mostCommonName = key
            }
        }
        print(key, nameDictionary[key]!)
    }
 
    return mostCommonName
}




let names = ["James", "Joe", "Rachel", "Phoebe", "Joe", "Ross", "Monica", "Ross", "Ross"]
mostCommonName(array: names)

