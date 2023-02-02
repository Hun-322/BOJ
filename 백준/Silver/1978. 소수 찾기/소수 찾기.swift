import Foundation

let N = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map{Int($0)!}
var sum = 0

for i in input{
    var isPrime = true
    
    if i == 1 { continue }
    
    for j in 2..<i {
        if i % j == 0 {
            isPrime = false
        }
    }
    
    if isPrime { sum += 1 }
    
}
print(sum)