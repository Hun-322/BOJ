import Foundation

func solution(_ numbers:[Int]) -> String {
    var answer = numbers.map{String($0)}.sorted(by: {$0 + $1 > $1 + $0})
    if answer[0] == "0" {
        return "0"
    }else {
        return answer.joined()
    }
}