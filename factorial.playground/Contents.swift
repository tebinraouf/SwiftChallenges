/*
    Written By: Tebin Raouf
    Function: Given a number, get the factorial.
 */
func factorial(of num: Int) -> Int {
    var result = 1
    for i in 1...num {
        result = result * i
    }
    return result
}
let result = factorial(of: 8)
print(result)