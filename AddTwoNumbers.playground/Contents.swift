//You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.
//
//You may assume the two numbers do not contain any leading zero, except the number 0 itself.
//
//Example:
//
//Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
//Output: 7 -> 0 -> 8
//Explanation: 342 + 465 = 807.


import UIKit

// Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

extension ListNode: CustomStringConvertible {
    // To print description of the list Node
    public var description: String {
        return "\(val) \(next != nil ? next!.description : "")"
    }
}

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var node1 = l1
        var node2 = l2
        var initialNode: ListNode?
        var currentNode: ListNode?
        var previousNode: ListNode?
        var carry = 0
        var rawValue = 0
        var value = 0
        
        while(true) {
            guard node1 != nil || node2 != nil || carry != 0 else {
                return initialNode
            }
            
            rawValue  = (node1?.val ?? 0) + (node2?.val ?? 0) + carry
            carry = Int(floor((Double(rawValue) / 10)))
            value = rawValue % 10
            currentNode = ListNode(value)
            
            if initialNode == nil {
                initialNode = currentNode
            }
            else {
                previousNode?.next = currentNode
            }
            
            previousNode = currentNode
            node1 = node1?.next
            node2 = node2?.next
        }
    }
}

let solution = Solution()
let listNode2 = ListNode(2)
let listNode4 = ListNode(4)
let listNode4_2 = ListNode(4)
let listNode3 = ListNode(3)
let listNode5 = ListNode(5)
let listNode6 = ListNode(6)

listNode4.next = listNode3
listNode2.next = listNode4

listNode6.next = listNode4_2
listNode5.next = listNode6


let solvedNode = solution.addTwoNumbers(listNode2, listNode5)

