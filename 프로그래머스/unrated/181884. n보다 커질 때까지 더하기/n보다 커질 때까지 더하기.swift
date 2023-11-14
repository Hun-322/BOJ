import Foundation

func solution(_ numbers:[Int], _ n:Int) -> Int {
    var sum = 0
    
    for i in numbers {
        sum += i
        
        if sum > n {
            return sum
        }
    }
    
    return sum
}