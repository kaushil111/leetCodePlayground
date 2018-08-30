//Given an array of integers, return indices of the two numbers such that they add up to a specific target.
//
//You may assume that each input would have exactly one solution, and you may not use the same element twice.
//
//Example:
//
//Given nums = [2, 7, 11, 15], target = 9,
//
//Because nums[0] + nums[1] = 2 + 7 = 9,
//return [0, 1].

import UIKit

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        for outerIndex in 0..<nums.count {
            let numberOuter = nums[outerIndex]
            
            for innerIndex in (outerIndex + 1)..<nums.count {
                let numberInner = nums[innerIndex]
                
                if numberOuter + numberInner == target {
                    return [outerIndex, innerIndex]
                }
            }
        }
        return []
    }
}

let solution = Solution()
solution.twoSum([2,7,11,15], 9)
