import Foundation

var temp = 1
var stack = [Int]()
var answer = [Character]()

for _ in 1...Int(readLine()!)! {
    var num = Int(readLine()!)!
    
    while temp <= num {
        stack.append(temp)
        temp += 1
        answer.append("+")
    }
    
    if stack.last == num {
        stack.popLast()
        answer.append("-")
    } else {
        print("NO")
        exit(0)
    }
}

answer.forEach{print($0)}