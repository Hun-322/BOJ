import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var answer = 0
    
    (1...number).forEach { 
        let num = divisorNum($0)
        answer += ( num > limit ? power : num)
    }
    
    return answer
}

func divisorNum(_ n: Int) -> Int {
    var set = Set<Int>()
    
    for i in 1...Int(sqrt(Double(n))) {
        if n % i == 0 {
            set.insert(i)
            set.insert(n / i)
        }
    }
    
    return set.count
}
