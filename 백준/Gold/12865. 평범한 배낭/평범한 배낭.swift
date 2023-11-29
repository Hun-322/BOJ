let nk = readLine()!.split(separator: " ").map{ Int($0)! }
let (n, k) = (nk[0], nk[1])
var dp = Array(repeating: Array(repeating: 0, count: k+1), count: n+1)
var arr = [[Int]]()

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{ Int($0)! })
}


for i in 1...n {
    for j in 1...k {
        if j >= arr[i - 1][0] {
            dp[i][j] = max(dp[i - 1][j], dp[i - 1][j - arr[i - 1][0]] + arr[i - 1][1])
        } else {
            dp[i][j] = dp[i - 1][j]
        }
    }
}

print(dp[n][k])