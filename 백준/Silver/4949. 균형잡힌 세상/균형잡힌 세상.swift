while true {
    var s = readLine()!
    
    if s == "." { break }
    
    var stack = [Character]()
    
    for s in s {
        if s == "[" || s == "("{
            stack.append(s)
        }else if s == "]"{
            if stack.last == "[" {
                stack.popLast()
            }else {
                stack.append(s)
                break
            }
        }else if s == ")"{
            if stack.last == "(" {
                stack.popLast()
            }else {
                stack.append(s)
                break
            }
        }
    }
    print(stack.count == 0 ? "yes" : "no")
}