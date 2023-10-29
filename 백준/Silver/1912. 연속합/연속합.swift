let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int($0)!}
var dp = [arr[0]] + Array(repeating: -1001, count: 100000)

for i in 1..<n {
    dp[i] = max(arr[i], dp[i-1] + arr[i])
}

print(dp.max()!)