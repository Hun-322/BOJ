import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var answer:[Int] = []
    var days:[Int] = []
    var num = 0
    
    for i in progresses.indices {
        days.append(Int(ceil(Double(100 - progresses[i]) / Double(speeds[i]))))
    }
    
    var first = days[0]
    
    for j in days{
        if j <= first {
            num += 1
        } else {
            answer.append(num)
            num = 1
            first = j
        }
    }
    answer.append(progresses.count - answer.reduce(0,+))
    
    return answer
}