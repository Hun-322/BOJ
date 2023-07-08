import Foundation

let n = Int(readLine()!)!

for _ in 1...n {
    let input = Int(readLine()!)!
    
    for num in input... {
        if isPrime(num: num) {
            print(num)
            break
        }
    }
}

func isPrime(num: Int) -> Bool {
    if num <  4 {
        return num == 1 || num == 0 ? false : true
    }
    
    for i in 2...Int(sqrt(Double(num))) {
        if num % i == 0 {
            return false
        }
    }
    return true
}