let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{ Int($0)! }.sorted()
var answer = [Int]()
var start = 0
var end = n - 1
var sum = Int.max

while start < end {
    let num = arr[start] + arr[end]
    
    if abs(num) < sum {
        sum = abs(num)
        answer = [arr[start], arr[end]]
    }
    
    num < 0 ? (start += 1) : (end -= 1)
}

print(answer[0], answer[1])