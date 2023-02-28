let N = Int(readLine()!)!
let length = readLine()!.split(separator: " ").map{Int($0)!}
let price = readLine()!.split(separator: " ").map{Int($0)!}
var min = price[0], answer = 0

for i in 0..<length.count {
    if price[i] < min {
        min = price[i]
    }
    answer += min * length[i]
}

print(answer)