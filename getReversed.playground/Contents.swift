/*
    Written By: Tebin Raouf
    Function Description: given a string, a reversed string is returned.
 */


func getReversed(_ word: String) -> String {
    var word = word
    var newString = ""
    for _ in word.characters {
        newString.append(word.characters.popLast()!)
    }
    return newString
}

let result = getReversed("swift")
print(result)