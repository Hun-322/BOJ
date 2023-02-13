let str = readLine()!
let bomb = readLine()!
var stack = ""

for s in str {
    stack.append(s)
    
    if s == bomb.last && stack.suffix(bomb.count) == bomb {
        stack.removeLast(bomb.count)
    }
}

print(stack.isEmpty ? "FRULA" : stack)