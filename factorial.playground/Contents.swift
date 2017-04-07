/*
    Written By: Tebin Raouf
    Function: Given a number, get the factorial.
 */
func factorial(of num: Int) -> Int {
    
    if num == 0 {
        return 1
    }
    
    var result = 1
    for i in 1...num {
        result = result * i
    }
    return result
}
let result = factorial(of: 10)
print(result)



func recursiveFactorial(of num: Int) -> Int {
    if num == 0 {
        return 1
    }
    return num * recursiveFactorial(of: num - 1)
}

let recursiveResult = recursiveFactorial(of: 10)
print(recursiveResult)