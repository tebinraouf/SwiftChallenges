/*
 - Tebin Raouf
 - Recusrive Fibonacci
 */



func fibonacciRecursive(_ number: Int) -> Int {
    if number <= 1 {
        return number
    } else {
        return fibonacciRecursive(number - 1) + fibonacciRecursive(number - 2)
    }
}

for i in 0...5 {
    print(fibonacciRecursive(i))
    //0 1 1 2 3 4 5
}


