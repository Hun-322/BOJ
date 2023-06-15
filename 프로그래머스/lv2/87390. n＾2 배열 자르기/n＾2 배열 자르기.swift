import Foundation

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    let first = Int(left), last = Int(right)
    var arr = Array(repeating: 0, count: last - first + 1)
    
    for i in first...last {
        arr[i - first] = max(i / n + 1, i % n + 1)
    }
    return arr
}