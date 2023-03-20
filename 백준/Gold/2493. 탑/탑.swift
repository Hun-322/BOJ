let N = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map{Int($0)!}
var stack: [(Int, Int)] = []

for i in 0..<N {
    while !stack.isEmpty {
        if stack.last!.1 > input[i] {
            print(stack.last!.0, terminator: " ")
            break
        }
        stack.popLast()
    }
    
    if stack.isEmpty {
        print(0, terminator: " ")
    }
    
    stack.append((i+1, input[i]))
}