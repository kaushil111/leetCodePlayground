//Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.
//
//Symbol       Value
//I             1
//V             5
//X             10
//L             50
//C             100
//D             500
//M             1000
//For example, two is written as II in Roman numeral, just two one's added together. Twelve is written as, XII, which is simply X + II. The number twenty seven is written as XXVII, which is XX + V + II.
//
//Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:
//
//I can be placed before V (5) and X (10) to make 4 and 9.
//X can be placed before L (50) and C (100) to make 40 and 90.
//C can be placed before D (500) and M (1000) to make 400 and 900.
//Given an integer, convert it to a roman numeral. Input is guaranteed to be within the range from 1 to 3999.
//
//Example 1:
//
//Input: 3
//Output: "III"
//Example 2:
//
//Input: 4
//Output: "IV"
//Example 3:
//
//Input: 9
//Output: "IX"
//Example 4:
//
//Input: 58
//Output: "LVIII"
//Explanation: C = 100, L = 50, XXX = 30 and III = 3.
//Example 5:
//
//Input: 1994
//Output: "MCMXCIV"
//Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.

import UIKit

class Solution {
    func intToRoman(_ num: Int) -> String {
        var numCopy = num
        var output = ""
        while numCopy > 0 {
            switch num {
            case _ where numCopy > 999:
                output += String(repeating: "M", count: numCopy/1000)
                numCopy %= 1000
            case _ where numCopy > 899:
                output += "CM"
                numCopy %= 900
            case _ where numCopy > 499:
                output += "D"
                numCopy %= 500
            case _ where numCopy > 399:
                output += "CD"
                numCopy %= 400
            case _ where numCopy > 99:
                output += String(repeating: "C", count: numCopy/100)
                numCopy %= 100
            case _ where numCopy > 89:
                output += "XC"
                numCopy %= 90
            case _ where numCopy > 49:
                output += "L"
                numCopy %= 50
            case _ where numCopy > 39:
                output += "XL"
                numCopy %= 40
            case _ where numCopy > 9:
                output += String(repeating: "X", count: numCopy/10)
                numCopy %= 10
            case _ where numCopy == 9:
                output += "IX"
                numCopy %= 9
            case _ where numCopy > 4:
                output += "V"
                numCopy %= 5
            case _ where numCopy == 4:
                output += "IV"
                numCopy %= 4
            case _ where numCopy < 4:
                output += String(repeating: "I", count: numCopy)
                numCopy = 0
            default:
                break
            }
        }
        
        return output
    }
}

let solution = Solution()
solution.intToRoman(3)
solution.intToRoman(4)
solution.intToRoman(9)
solution.intToRoman(58)
solution.intToRoman(1994)
















