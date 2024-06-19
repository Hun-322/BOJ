import Foundation

func solution(_ a:Int, _ b:Int, _ c:Int) -> Int {
    let num: Set<Int> = [a, b, c]
    
    switch num.count {
        case 1:
        return (a * 3) * (a * a * 3) * (a * a * a * 3)
        case 2:
        return (a + b + c) * (a * a + b * b + c * c)
        default:
        return a + b + c
    }
}