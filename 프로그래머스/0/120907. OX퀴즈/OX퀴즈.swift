import Foundation

func solution(_ quiz:[String]) -> [String] {
    var slice = quiz.map{$0.components(separatedBy: " ")}
    var answer:[String] = []
    
    for i in slice.indices {
        var value = Int(slice[i][0])! + (slice[i][1] == "+" ? +1 : -1) * Int(slice[i][2])!
        String(value) == slice[i][4] ? answer.append("O") : answer.append("X")
    }
    
    return answer
}