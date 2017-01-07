/*
    Written By: Tebin Raouf
    Function Description: A function that takes a string and chooses the longest string and return the result. This function ignores the special characters. To find the special characters a local function is written and called within getLongestWordIn(_:) function.
 */

import UIKit

func getLongestWordIn(_ sentence: String) -> String {
    func check(_ str: String) -> String{
        let specialChars = ["!", "@", "#", "$", "%", "^", "&", "*", ".", "~", "[", "/", ":"]
        var str = str
        for i in specialChars {
            str = str.replacingOccurrences(of: i, with: "")
        }
        return str
    }
    let cleanString = check(sentence)
    var arr = cleanString.characters.split { $0 == " "}.map { String($0) }
    var result = ""
    var length = arr[0].characters.count
    for i in 1...arr.count-1 {
        if arr[i].characters.count > length {
            result = arr[i]
            length = arr[i].characters.count
        }
    }
    return result
}
let longestWord01 = getLongestWordIn("a &beautiful sentence^&!")
let longestWord02 = getLongestWordIn("^a beautiful !sentence^&!")
let longestWord03 = getLongestWordIn("a beautiful&* sentence@&!")
let longestWord04 = getLongestWordIn("a beautiful%# sentence~&!")


print(longestWord01)
print(longestWord02)
print(longestWord03)
print(longestWord04)

