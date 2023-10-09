let n = Int(readLine()!)!
var rgb = [[0,0,0]]
var dp = Array(repeating: [0, 0, 0], count: n + 1)

for _ in 0..<n {
    rgb.append(readLine()!.split{$0 == " "}.map{Int($0)!})
}

for i in 1...n {
    dp[i][0] = min(dp[i-1][1], dp[i-1][2]) + rgb[i][0]
    dp[i][1] = min(dp[i-1][0], dp[i-1][2]) + rgb[i][1]
    dp[i][2] = min(dp[i-1][0], dp[i-1][1]) + rgb[i][2]
}
print(dp[n].min()!)