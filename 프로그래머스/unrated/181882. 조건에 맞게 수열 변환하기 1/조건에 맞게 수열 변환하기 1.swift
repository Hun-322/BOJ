import Foundation

func solution(_ arr:[Int]) -> [Int] {   
    var answer = [Int]()
    
    arr.forEach {
        if $0 >= 50 && $0 % 2 == 0 {
            answer.append($0 / 2)
        } else if $0 < 50 && $0 % 2 == 1 {
            answer.append($0 * 2)
        } else {
            answer.append($0)
        }
    }
    
    return answer
}