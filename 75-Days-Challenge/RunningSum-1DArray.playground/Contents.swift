import UIKit

var greeting = "Hello, playground"
/*
Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).

Return the running sum of nums.
 
 Example 1:

 Input: nums = [1,2,3,4]
 Output: [1,3,6,10]
 Explanation: Running sum is obtained as follows: [1, 1+2, 1+2+3, 1+2+3+4].
 Example 2:

 Input: nums = [1,1,1,1,1]
 Output: [1,2,3,4,5]
 Explanation: Running sum is obtained as follows: [1, 1+1, 1+1+1, 1+1+1+1, 1+1+1+1+1].
 Example 3:

 Input: nums = [3,1,2,10,1]
 Output: [3,4,6,16,17]
  

 Constraints:

 1 <= nums.length <= 1000
 -10^6 <= nums[i] <= 10^6

*/

class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var runningSum:[Int] = Array.init(repeating: 0, count: nums.count)
        for (index, value) in nums.enumerated() {
            runningSum[index] = (index == 0) ? value : value + runningSum[index - 1]
        }
        return runningSum
    }
}

Solution().runningSum([3,1,2,10,1])

class Solution2 {
    func runningSum(_ nums: [Int]) -> [Int] {
        nums.reduce([]) {
            return $0 + [$1 + ($0.last ?? 0)]
        }
    }
}

print(Solution2().runningSum([3,1,2,10,1]))


