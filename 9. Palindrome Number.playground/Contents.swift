//Determine whether an integer is a palindrome. An integer is a palindrome when it reads the same backward as forward.
//
//Example 1:
//
//Input: 121
//Output: true
//Example 2:
//
//Input: -121
//Output: false
//Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
//Example 3:
//
//Input: 10
//Output: false
//Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
//Follow up:
//
//Coud you solve it without converting the integer to a string?
//

import UIKit

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        guard x >= 0 else {
            return false
        }
        
        var num = x
        var reverse = 0
        
        while num > 0 {
            reverse = reverse * 10 +  num % 10
            num = num / 10
        }
        
        return reverse == x
    }
}

let solution = Solution()
solution.isPalindrome(121)
solution.isPalindrome(-121)

