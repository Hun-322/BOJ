import Foundation

func solution(_ n:Int) -> [Int] {
    var n = n
    var answer = [n]
    
    while n > 1 {
        n % 2 == 0 ? (n /= 2) : (n = 3 * n + 1)
        answer.append(n)
    }
    
    return answer
}