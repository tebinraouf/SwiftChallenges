/*
 Code by: Tebin Raouf
 Function Description: Find a number in a given sortted array and return the
 index of the number by using a binary search algorithm.
 
 */
import UIKit

func binarySearch(sortedArray array: [Int], target: Int) -> Int {
    var min = 0
    var max = array.count - 1
    var guess = 0
    for i in 0...array.count/2 {
        guess = (min+max)/2
        if array[guess] == target {
            return guess
        }else if array[guess] < target {
            min = guess + 1
        }else{
            max = guess - 1
        }
        //print("Number of loops: ", i)
    }
    return -1
}


let numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89]
print(binarySearch(sortedArray: numbers, target: 89))
