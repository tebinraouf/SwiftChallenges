/*
    Written By: Tebin Raouf
    Function Description: given a string, a reversed string is returned.
 */


import Foundation
import UIKit

extension String {
    func removeVowels() -> String {
        var newWord = self
        for vowel in ["a", "e", "o", "u", "i"] {
            newWord = newWord.replacingOccurrences(of: vowel, with: "")
        }
        return newWord
    }
}


func reversed(_ word: String) -> String {
    var word = word
    var newString = ""
    for _ in word.characters {
        newString.append(word.characters.popLast()!)
    }
    return newString
}

let result = reversed("swift nice is beautiful")
//print(result)

func reversedSentence(_ sentence: String) -> String {
    let words = sentence.components(separatedBy: " ")
    var newString = ""
    for word in words {
        var word = word
        for _ in word.characters {
            newString.append(word.characters.popLast()!)
        }
        newString.append(" ")
    }
    
    return newString.removeVowels()
}

let resultSentence = reversedSentence("swift nice is beautiful")
print(resultSentence)






