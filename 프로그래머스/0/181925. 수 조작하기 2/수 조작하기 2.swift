import Foundation

func solution(_ numLog:[Int]) -> String {
    let dict = [1: "w", -1: "s", 10: "d", -10: "a"]
    var temp =  numLog[0]
    var answer = ""
    
    for log in 1..<numLog.count {
        answer += dict[numLog[log] - temp]!
        temp = numLog[log]
    }
    
    return answer
}