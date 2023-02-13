var str = readLine()!
var bomb = readLine()!
var stack = [String]()

for s in str {
    stack.append(String(s))
    
    if s == bomb.last! && stack.count >= bomb.count && stack[(stack.count-bomb.count)...].joined() == bomb{
        (0..<bomb.count).forEach { _ in
                        stack.popLast()
                    }
    }
}

print(stack.isEmpty ? "FRULA" : stack.joined())