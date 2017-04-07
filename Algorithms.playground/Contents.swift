//: Playground - noun: a place where people can play

import UIKit


func linearSearch(A: [Int], n: Int, x: Int) -> Int? {
    
    var answer: Int?
    
    for i in A {
        if i == x {
            answer = A.index(of: i);
            //return answer
        }
        print("..")
    }
    
    
    return answer
}

//print(linearSearch(A: [1,2,3,4,2,5], n: 5, x: 4))


func factorial(n: UInt) -> UInt {
    if n == 0 {
        return 1
    }
    return n * factorial(n: n - 1)
}
//print(factorial(n: 1))



func recursiveLinearSearch(A: [Int], n: Int, i: Int, x: Int) -> Int? {
    if i > n {
        return nil
    }else {
        if A[i] == x {
            return i
        }else {
            if i <= n && A[i] != x {
                return recursiveLinearSearch(A: A, n: n, i: i+1, x: x)
            }
            return nil
        }
    }
}
print(recursiveLinearSearch(A: [1,2,3,4,5], n: 4, i: 0, x: 5))




