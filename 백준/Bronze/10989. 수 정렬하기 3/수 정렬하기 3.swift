var answer = ""
let input = Int(readLine()!)!
var arr = Array(repeating: 0, count: 10001)


for _ in 1...input {
    var n = Int(readLine()!)!
    arr[n] += 1
}

for i in 1...10000 where arr[i] > 0{
    answer += String(repeating: "\(i)\n", count: arr[i])
}

print(answer)