let n = Int(readLine()!)!
var arr = [Int]()
var dp = Array(repeating: 0, count: n+1)

for _ in 1...n {
    arr.append(Int(readLine()!)!)
}

dp[1] = arr[0]

if n >= 2 {
    dp[2] = arr[0] + arr[1]
}
if n >= 3 {
    for i in 3...n {
        dp[i] = max(dp[i-3] + arr[i-2] + arr[i-1], dp[i-2] + arr[i-1])
    }
}

print(dp[n])