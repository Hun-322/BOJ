import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var arr = priorities
    var idx = location
    var answer = 0
    
    while !arr.isEmpty {
        let maxValue = arr.max()!
        idx -= 1
        
        if maxValue != arr[0] {
            arr.append(arr.removeFirst())
            
            if idx < 0 {
                idx = arr.count - 1
            }
        } else {
            answer += 1
            arr.removeFirst()
            
            if idx < 0 {
                break
            }
        }
    }
    return answer
}