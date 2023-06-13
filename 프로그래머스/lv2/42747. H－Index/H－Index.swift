import Foundation

func solution(_ citations:[Int]) -> Int {
    var arr = citations.sorted(by: >)
    
    for i in 0..<arr.count {
        if i >= arr[i] {
            return i
        }
    }
    
    return arr.count
}