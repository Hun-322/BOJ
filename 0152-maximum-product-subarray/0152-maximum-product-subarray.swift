class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        var minValue = nums[0]
        var maxValue = nums[0]
        var answer = nums[0]

        for i in 1..<nums.count {
            
            if nums[i] < 0 {
                (maxValue, minValue) = (minValue, maxValue)
            }

            minValue = min(minValue * nums[i], nums[i])
            maxValue = max(maxValue * nums[i], nums[i])
            answer = max(answer, maxValue)
        }

        return answer
    }
}