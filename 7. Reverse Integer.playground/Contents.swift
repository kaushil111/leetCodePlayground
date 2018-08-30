//Given a 32-bit signed integer, reverse digits of an integer.
//
//Example 1:
//
//Input: 123
//Output: 321
//Example 2:
//
//Input: -123
//Output: -321
//Example 3:
//
//Input: 120
//Output: 21
//Note:
//Assume we are dealing with an environment which could only store integers within the 32-bit signed integer range: [−231,  231 − 1]. For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.

import UIKit

class Solution {
    func reverse(_ x: Int) -> Int {
        let isNegative = x < 0
        var number = isNegative ? (x * -1) : x
        var reverse = 0
        
        while number > 0 {
            reverse = reverse * 10 + number % 10
            number = number / 10
            if reverse > Int32.max {
                return 0
            }
        }
        
        return isNegative ? (reverse * -1) : reverse
      
    }
}

let solution = Solution()
solution.reverse(100)
solution.reverse(1534236469)
solution.reverse(-322)
