class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var minVlaue = 100001
        var maxVlaue = 0

        for price in prices {
            minVlaue = min(minVlaue, price)
            maxVlaue = max(maxVlaue, price - minVlaue)
        }

        return maxVlaue
    }
}