let N = Int(readLine()!)!
var input = readLine()!.split(separator: " ").map{Int($0)!}
var stack = [Int]()
var minNmuber = 1

while !input.isEmpty {
    let num = input.removeFirst()
    
    if num == minNmuber {
        minNmuber += 1
        
        while !stack.isEmpty && stack.last! == minNmuber {
            stack.popLast()!
            minNmuber += 1
        }
    } else {
        stack.append(num)
    }
}
print(stack.isEmpty ? "Nice" : "Sad")