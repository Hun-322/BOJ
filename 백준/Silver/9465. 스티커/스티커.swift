let t = Int(readLine()!)!

for _ in 0..<t {
    let n = Int(readLine()!)!
    var arr = [[Int]]()
    var dp = Array(repeating: Array(repeating: 0, count: 100001), count: 2)
    
    for _ in 1...2 {
        arr.append(readLine()!.split(separator: " ").map{Int($0)!})
    }
    
    if n == 1 {
        print(max(arr[0][0], arr[1][0]))
    } else {
        dp[0][0] = arr[0][0]
        dp[1][0] = arr[1][0]
        dp[0][1] = dp[1][0] + arr[0][1]
        dp[1][1] = dp[0][0] + arr[1][1]
        
        for i in 2..<n {
            dp[0][i] = arr[0][i] + max(dp[1][i-1], dp[1][i-2])
            dp[1][i] = arr[1][i] + max(dp[0][i-1], dp[0][i-2])
        }
        print(max(dp[0][n-1], dp[1][n-1]))
    }
}