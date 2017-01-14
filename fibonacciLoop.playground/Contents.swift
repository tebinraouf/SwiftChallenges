/*
 Written By: Tebin Raouf
 Function Description: A function to calculate the Fibonacci sequence using a loop.
 */
import UIKit

func fibonacciLoop(_ num: Int) -> [Int]{
    var previous = 0
    var next = 1
    var result = 0
    var returnResult = [Int]()
    returnResult.append(previous)
    for _ in 0...num {
        //ampersand is added to show the overflow. If not, the application crashes.
        result = previous &+ next
        returnResult.append(result)
        previous = next
        next = result
    }
    return returnResult
}
print(fibonacciLoop(94))
