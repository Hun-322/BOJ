var stack = [String]()

for _ in  1...Int(readLine()!)! {
    var input = readLine()!.split(separator: " ").map{String($0)}
    var command = input[0]
    
    switch command {
    case "push":
        stack.append(input[1])
    case "pop":
        if stack.isEmpty {
            print(-1)
        }else{
            print(stack.last!)
            stack.popLast()
        }
    case "size":
        print(stack.count)
    case "empty":
        if stack.isEmpty {
            print(1)
        }else {
            print(0)
        }
    case "top":
        if stack.isEmpty {
            print(-1)
        }else{
            print(stack.last!)
        }
    default:
        break
    }
}
