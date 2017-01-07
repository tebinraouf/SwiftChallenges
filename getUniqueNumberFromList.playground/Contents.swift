/*
    Code By: Tebin Raouf
    Function Description: Given a list of numbers, return the only number that's repeated only once.
 */
func getUniqueNumber(from list: [Int]) -> Int{
    var previous = list[0]
    for i in list.dropFirst() {
        //I used xor to compare the numbers
        //example: 1 ^ 1 = 0; 1 ^ 0 = 1
        //This is binary comparison
        previous = previous ^ i
    }
    return previous
}
let list = [1,2,2,3,1]
let uniqueNumber = getUniqueNumber(from: list)
print(uniqueNumber)
