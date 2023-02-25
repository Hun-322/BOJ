var N = Int(readLine()!)!
var arr = [[Int]]()
var time = -1
var sum = 0

for _ in 1...N{
    arr.append(readLine()!.split(separator: " ").map{Int($0)!})
}

arr = arr.sorted(by: {$0[1] == $1[1] ? $0[0] < $1[0] : $0[1] < $1[1]})

for i in arr {
    if i[0] >= time {
        time = i[1]
        sum += 1
    }
}

print(sum)