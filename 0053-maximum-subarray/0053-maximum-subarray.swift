class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var temp = nums[0]
        var answer = nums[0]

        for i in 1..<nums.count {
            temp = max(nums[i], temp + nums[i])
            answer = max(answer, temp)
        }

        return answer
    }
}