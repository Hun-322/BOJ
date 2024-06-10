import Foundation

func solution(_ n:Int, _ stations:[Int], _ w:Int) -> Int {
    var answer = 0
    var start = 1
    
    for i in 0..<stations.count {
        let end = stations[i] - (w + 1)
        let void = ceil(Double(end - start + 1) / Double(w * 2 + 1))
        answer += void > 0 ? Int(void) : 0
        start = stations[i] + w + 1
    }
    
    if start <= n {
        let end = n
        let void = ceil(Double(end - start + 1) / Double(w * 2 + 1))
        answer += void > 0 ? Int(void) : 0
    }
    
    return answer
}