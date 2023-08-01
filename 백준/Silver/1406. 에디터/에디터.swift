var str = readLine()!.map{String($0)}
var stack = [String]()

for _ in 0..<Int(readLine()!)! {
    let input = readLine()!
    
    switch input {
    case "L":
        if !str.isEmpty {
            stack.append(str.popLast()!)
        }
    case "D":
        if !stack.isEmpty {
            str.append(stack.popLast()!)
        }
    case "B":
        if !str.isEmpty {
            str.removeLast()
        }
    default:
        str.append(String(input.last!))
    }
}
print((str+(stack.reversed())).joined())