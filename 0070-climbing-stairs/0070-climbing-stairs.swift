class Solution {
    func climbStairs(_ n: Int) -> Int {
        guard n > 2 else { return n }
        
        var first = 1
        var second = 2
        
        for _ in 3...n {
            let third = first + second
            first = second
            second = third
        }
        
        return second
    }   
}