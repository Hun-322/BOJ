import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var stack = [0]
    var answer = Array(repeating: -1, count: numbers.count)
    
    for i in 1..<numbers.count {
        while !stack.isEmpty && numbers[stack.last!] < numbers[i] {
            answer[stack.popLast()!] = numbers[i]
        }
        stack.append(i)
    }
    
    return answer
}