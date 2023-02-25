readLine()
var arr = readLine()!.split{$0 == " "}.map{Int($0)!}.sorted()
var sum = 0, temp = 0

for i in 0..<arr.count {
    temp += arr[i]
    sum += temp
}
print(sum)