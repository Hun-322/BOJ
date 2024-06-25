let input = readLine()!
let arr = readLine()!.split{ $0 == " "}.map{ Int($0)! }.reduce(0) { $0 + $1 }
print(arr)

