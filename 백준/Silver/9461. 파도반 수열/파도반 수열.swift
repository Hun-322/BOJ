let t = Int(readLine()!)!
var dp = [1, 1, 1, 2, 2]
var tCase = [Int]()

for _ in 1...t {
    tCase.append(Int(readLine()!)!)
}


for i in 0..<tCase.max()! {
    dp.append(dp[i] + dp[i+4])
}

tCase.forEach{ print(dp[$0-1])}