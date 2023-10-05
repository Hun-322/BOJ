let t = Int(readLine()!)!

for _ in 1...t {
    let n = Int(readLine()!)!
    var dp = Array(repeating: 0, count: n+1)
    
    if n < 4 {
        print( n > 2 ? 4 : n > 1 ? 2 : 1)
    } else {
        dp[1] = 1
        dp[2] = 2
        dp[3] = 4
        
        for i in 4...n {
            dp[i] = dp[i-1] + dp[i-2] + dp[i-3]
        }
        
        print(dp[n])
    }
}