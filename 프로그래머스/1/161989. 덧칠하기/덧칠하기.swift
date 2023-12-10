import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var arr = Array(repeating: true, count: n+1)
    var answer = 0
    var idx = 0
    
    for i in section {
        arr[i] = false
    }
    
    while idx < arr.count {
        if !arr[idx] {
            answer += 1
            idx += m
        } else {
            idx += 1
        }
    }
    return answer
}