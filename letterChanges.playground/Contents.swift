/*
    Code by: Tebin Raouf
    Function Description: This function takes a string and changes each letter to the next letter in the alphabet.
 */
func letterChanges(_ str: String) -> String {
    let az = (97...122).map { Character(UnicodeScalar($0)) }
    let vowels = ["A", "E", "I", "O", "U"]
    var result = ""
    var str = str.lowercased()
    for char in str.characters {
        if var index = az.index(of: char) {
            if index == 25 { index = -1 }
            if vowels.contains(String(az[index+1]).uppercased()) {
                result.append(String(az[index+1]).uppercased())
            }else{
                result.append(String(az[index+1]))
            }
        }else{
            result.append(char)
        }
    }
    return result
}
let str = "USA"
let str2 = "functions are awesome"
let str3 = "Testing the sentence with z"
let result = letterChanges(str3)
print(result)