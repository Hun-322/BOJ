import Foundation

func solution(_ s:String) -> [Int] {
    var stack = [Character]()
    var answer = [Int]()
    
    for s in s {
        if !stack.contains(s) {
            answer.append(-1)
        } else {
            answer.append(stack.count - stack.lastIndex(of: s)!)
        }
        stack.append(s)
    }
    return answer
}