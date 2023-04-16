import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var dict:[Int:Int] = [:]
    var answer = 0
    var k = k
    
    for i in tangerine {
        dict[i, default:0] += 1
    }
    
    var max = dict.sorted(by: {$0.value > $1.value})
    
    for i in max {
        if k <= 0 {
            break
        }
        
        k -= i.value
        answer += 1
    }
    
    
    return answer
}