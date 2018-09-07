//Implement atoi which converts a string to an integer.
//
//The function first discards as many whitespace characters as necessary until the first non-whitespace character is found. Then, starting from this character, takes an optional initial plus or minus sign followed by as many numerical digits as possible, and interprets them as a numerical value.
//
//The string can contain additional characters after those that form the integral number, which are ignored and have no effect on the behavior of this function.
//
//If the first sequence of non-whitespace characters in str is not a valid integral number, or if no such sequence exists because either str is empty or it contains only whitespace characters, no conversion is performed.
//
//If no valid conversion could be performed, a zero value is returned.
//
//Note:
//
//Only the space character ' ' is considered as whitespace character.
//Assume we are dealing with an environment which could only store integers within the 32-bit signed integer range: [−231,  231 − 1]. If the numerical value is out of the range of representable values, INT_MAX (231 − 1) or INT_MIN (−231) is returned.
//Example 1:
//
//Input: "42"
//Output: 42
//Example 2:
//
//Input: "   -42"
//Output: -42
//Explanation: The first non-whitespace character is '-', which is the minus sign.
//Then take as many numerical digits as possible, which gets 42.
//Example 3:
//
//Input: "4193 with words"
//Output: 4193
//Explanation: Conversion stops at digit '3' as the next character is not a numerical digit.
//Example 4:
//
//Input: "words and 987"
//Output: 0
//Explanation: The first non-whitespace character is 'w', which is not a numericalZ
//digit or a +/- sign. Therefore no valid conversion could be performed.
//Example 5:
//
//Input: "-91283472332"
//Output: -2147483648
//Explanation: The number "-91283472332" is out of the range of a 32-bit signed integer.
//Thefore INT_MIN (−231) is returned.


import UIKit

class Solution {
    func myAtoi(_ str: String) -> Int {
        
        var input = String(str)
        var result = 0;
        var isNegative = false
        var isSignDetermined = false
        var didStartNumeric = false
        let allowedCharSet: Set<Character> = [" ", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "-", "+"]

        while(!input.isEmpty) {
            let character = input.removeFirst()
            
            guard allowedCharSet.contains(character)
                else {
                    break
            }
            
            if character ==  " " {
                guard !didStartNumeric && !isSignDetermined else {
                    break
                }
                
                continue
            }
            
            if (character == "-" || character == "+") {
                guard result == 0 && !isSignDetermined && !didStartNumeric else {
                    break
                }
                
                isSignDetermined = true
                isNegative = character == "-"
                continue
            }
            
            didStartNumeric = true
            result = result * 10 + character.integerValue()
            
            if result > Int32.max {
                result = isNegative ? Int(Int32.min) * -1 : Int(Int32.max)
                break
            }
        }
        
        return result * (isNegative ? -1 : 1)
    }
}


extension Character {
    func integerValue() -> Int {
        
        switch self {
        case "0":
            return 0
        case "1":
            return 1
        case "2":
            return 2
        case "3":
            return 3
        case "4":
            return 4
        case "5":
            return 5
        case "6":
            return 6
        case "7":
            return 7
        case "8":
            return 8
        case "9":
            return 9
        default:
            return 0
        }
    }
}

let solution = Solution()
solution.myAtoi("100")
solution.myAtoi("   -42")
solution.myAtoi("4193 with words")
solution.myAtoi("words and 987")
solution.myAtoi("-91283472332")

