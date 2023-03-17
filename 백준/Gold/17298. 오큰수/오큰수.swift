let N = Int(readLine()!)!
var input = readLine()!.split(separator: " ").map{Int($0)!}
var answer = Array(repeating: "-1", count: N)
var stack = [Int]()


for i in 0..<input.count {
    while !stack.isEmpty && input[stack.last!] < input[i] {
        answer[stack.popLast()!] = String(input[i])
    }
    stack.append(i)
}

print(answer.joined(separator: " "))