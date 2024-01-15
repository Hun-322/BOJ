import Foundation

func solution(_ numer1:Int, _ denom1:Int, _ numer2:Int, _ denom2:Int) -> [Int] {
    let numer = numer1 * denom2  + numer2 * denom1
    let denom = denom1 * denom2
    let gcd = getGcd(numer, denom)
    
    return [numer / gcd, denom / gcd]
}

func getGcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return getGcd(b, a % b)
    }
}