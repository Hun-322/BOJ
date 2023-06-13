import Foundation

func solution(_ elements:[Int]) -> Int {
    var answer = Set<Int>()
    
    for i in 0..<elements.count {
        var sum = 0
        
        for j in 0..<elements.count {
            sum += elements[(i + j) % elements.count]
            answer.insert(sum)
        }
        sum = 0
    }
    
    return answer.count
}