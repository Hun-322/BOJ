let n = Int(readLine()!)!
let arr = [0] + readLine()!.split(separator: " ").map{Int($0)!}
var dp = Array(repeating: 0, count: n+1)

for i in 1..<n+1 {
    for j in 1..<i+1 {
        dp[i] = max(dp[i], dp[i-j] + arr[j])
    }
}
print(dp[n])
