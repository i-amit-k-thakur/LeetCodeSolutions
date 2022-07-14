import UIKit

var greeting = "Hello, playground"

/**
 Given two strings ransomNote and magazine, return true if ransomNote can be constructed from magazine and false otherwise.

 Each letter in magazine can only be used once in ransomNote.

 Example 1:
 Input: ransomNote = "a", magazine = "b"
 Output: false
 
 Example 2:
 Input: ransomNote = "aa", magazine = "ab"
 Output: false

 Example 3:
 Input: ransomNote = "aa", magazine = "aab"
 Output: true
  
 Constraints:

 1 <= ransomNote.length, magazine.length <= 105
 ransomNote and magazine consist of lowercase English letters.
 */


class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var returnValue = true
        var magazineCharacters = magazine.reversed() as Array
        ransomNote.forEach { c in
            if !magazineCharacters.contains(c) {
                returnValue = false
                return
            }
        
            let indexOfCharacter = magazineCharacters.firstIndex(of: c)
            magazineCharacters.remove(at: indexOfCharacter!)
        }
        return returnValue
    }
}

print(Solution().canConstruct("aa", "ba"))
