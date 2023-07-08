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
    if num < 3 {
        return num == 2 ? true : false
    }
    
    for i in 2...Int(sqrt(Double(num)) + 1) {
        if num % i == 0 {
            return false
        }
    }
    
    return true
}