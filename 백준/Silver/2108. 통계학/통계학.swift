import Foundation

let input = Int(readLine()!)!
var arr:[Int] = []
var dict:[Int:Int] = [:]

for _ in 1...input {
    var n = Int(readLine()!)!
    arr.append(n)
    dict[n ,default: 0] += 1
}

arr = arr.sorted()
var max = dict.max(by: {$0.value < $1.value})!.value
var maxValue = dict.filter({ $0.value == max}).keys.sorted()

print(Int(round(Double(arr.reduce(0,+)) / Double(input))))
print(arr[input/2])
print(maxValue.count == 1 ? maxValue[0] : maxValue[1])
print(arr.last! - arr.first!)