import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var answer = [Int]()
    
    arr.indices.forEach{ answer += Array(repeating: arr[$0], count: arr[$0]) }
    
    return answer
}