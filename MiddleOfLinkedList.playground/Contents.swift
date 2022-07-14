import UIKit

var greeting = "Hello, playground"
/**
 Given the head of a singly linked list, return the middle node of the linked list.

 If there are two middle nodes, return the second middle node.

 Example 1:
 Input: head = [1,2,3,4,5]
 Output: [3,4,5]
 Explanation: The middle node of the list is node 3.
 Example 2:

 Input: head = [1,2,3,4,5,6]
 Output: [4,5,6]
 Explanation: Since the list has two middle nodes with values 3 and 4, we return the second one.
  
 Constraints:

 The number of nodes in the list is in the range [1, 100].
 1 <= Node.val <= 100
 */


 public class ListNode {
     public var val: Int
     public var next: ListNode?
     public init() { self.val = 0; self.next = nil; }
     public init(_ val: Int) { self.val = val; self.next = nil; }
     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }
 
class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        ///As head is optional, first we check if head exists. Else return nil
        guard var head = head else {
            return nil
        }
        
        var copyOfHead = head
        
        ///Iterate to find the last element count
        var counter = 1
        while head.next != nil {
            counter+=1
            head = head.next!
        }
        
        ///Identify the halfway point. If this is an even list, use ceil to identify the next value
        ///Iterate till the halfway point
        let halfway = Int(ceil(Double(counter/2)))
        for i in 0...halfway {
            if i == halfway {
                break
            }
            copyOfHead = copyOfHead.next!
        }
        return copyOfHead
    }
}


///Runtime: 5 ms, faster than 45.09% of Swift online submissions for Middle of the Linked List.
///Memory Usage: 14.3 MB, less than 16.12% of Swift online submissions for Middle of the Linked List.
