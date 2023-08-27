let N = Int(readLine()!)!
var stack = [Int]()

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    let command = input[0]
    
    switch command {
    case 1:
        stack.append(input[1])
    case 2:
        print(stack.isEmpty ? -1 : stack.popLast()!)
    case 3:
        print(stack.count)
    case 4:
        print(stack.isEmpty ? 1 : 0)
    default:
        print(stack.isEmpty ? -1 : stack.last!)
    }
}
