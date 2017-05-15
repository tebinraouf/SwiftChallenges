//: Playground - noun: a place where people can play

/*
 Code by: Tebin Raouf
 Function Description: Given an array of numbers, return a dictionary of repeated numbers.
 
 */

import UIKit

func repeatedNumber(in array: [Int]) -> [Int: Int]{
    var count = 1
    var dict = [Int: Int]()
    for i in array {
        for (key,value) in dict {
            if i == key {
                count += value
            }
        }
        dict[i] = count
        count = 1
    }
    return dict
}

print(repeatedNumber(in: [2,2,2,3,4,5,3,10,2,4,6,2]))
//Output [5: 1, 6: 1, 10: 1, 2: 5, 3: 2, 4: 2]


