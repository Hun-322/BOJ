let N = Int(readLine()!)!
var arr = Array(repeating: 0, count: 1000001)
var answer = Array(repeating: "-1", count: N)
let seq = readLine()!.split(separator: " ").map{Int($0)!}
var stack = [Int]()

for i in seq {
    arr[i] += 1
}

for i in 0..<seq.count {
    while !stack.isEmpty && arr[seq[stack.last!]] < arr[seq[i]] {
        answer[stack.popLast()!] = String(seq[i])
    }
    stack.append(i)
}

print(answer.joined(separator: " "))