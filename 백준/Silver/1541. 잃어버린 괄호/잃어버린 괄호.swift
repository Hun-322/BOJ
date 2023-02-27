var input = readLine()!.split{$0 == "-"}.map{String($0)}
let first = input[0].split{$0 == "+"}.map{Int($0)!}.reduce(0, +)
var sum = 0

for i in 1..<input.count {
    sum += input[i].split{$0 == "+"}.map{Int($0)!}.reduce(0, +)
    }

print(first - sum)