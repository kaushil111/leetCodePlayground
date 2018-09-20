//Given n non-negative integers a1, a2, ..., an , where each represents a point at coordinate (i, ai). n vertical lines are drawn such that the two endpoints of line i is at (i, ai) and (i, 0). Find two lines, which together with x-axis forms a container, such that the container contains the most water.
//
//Note: You may not slant the container and n is at least 2.
//
//The above vertical lines are represented by array [1,8,6,2,5,4,8,3,7]. In this case, the max area of water (blue section) the container can contain is 49.
//
//Example:
//
//Input: [1,8,6,2,5,4,8,3,7]
//Output: 49

import UIKit

class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var maxArea = 0
        var area = 0
        var minHeight = 0
        var leftIndex = 0
        var rightIndex = height.count - 1
        
        while leftIndex < rightIndex {
            minHeight = height[leftIndex] < height[rightIndex] ? height[leftIndex] : height[rightIndex];
            area = minHeight * (rightIndex - leftIndex)
            maxArea = maxArea < area ? area : maxArea
            
            if height[leftIndex] < height[rightIndex] {
                leftIndex += 1
            }
            else {
                rightIndex -= 1
            }
        }
        
        return maxArea
    }
}

let solution = Solution()
solution.maxArea([1,8,6,2,5,4,8,3,7])
