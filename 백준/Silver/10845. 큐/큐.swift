let n = Int(readLine()!)!
var queue = [String]()

for _ in 1...n {
    let input = readLine()!.split(separator: " ").map{String($0)}
    
    switch input[0] {
    case "push":
        queue.append(input[1])
    case "pop":
        print(queue.isEmpty ? "-1" : queue.removeFirst())
    case "size":
        print(queue.count)
    case "empty":
        print(queue.isEmpty ? "1" : "0")
    case "front":
        print(queue.isEmpty ? "-1" : queue.first!)
    case "back":
        print(queue.isEmpty ? "-1" : queue.last!)
    default:
        print("err")
    }
}