let n = Int(readLine()!)!
var stack = [(Int, Int)]()
var arr = [Int]()
var answer = 0

for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}

for i in 0..<n {
    var temp = i
    while !stack.isEmpty && stack.last!.0 > arr[i] {
        answer = max(answer, (i - stack.last!.1) * stack.last!.0)
        temp = stack.last!.1
        stack.popLast()
    }
    stack.append((arr[i], temp))
}

while !stack.isEmpty {
    answer = max(answer, (n - stack.last!.1) * stack.last!.0)
    stack.popLast()
}

print(answer)