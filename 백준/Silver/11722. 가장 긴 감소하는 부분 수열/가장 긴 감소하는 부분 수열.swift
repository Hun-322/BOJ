let N = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map{Int($0)!}
var dp = Array(repeating: 1, count: N+1)

for i in 1..<N {
    for j in 0..<i {
        if input[i] < input[j] {
            dp[i] = max(dp[i], dp[j] + 1)
        }
    }
}
print(dp.max()!)