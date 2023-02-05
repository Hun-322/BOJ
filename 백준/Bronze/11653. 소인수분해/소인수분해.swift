import Foundation

var N = Int(readLine()!)!
var arr = Array(repeating: true, count: N + 1)
var isPrime:[Int] = []

if N == 1 {
    exit(0)
}

for i in 2...N {
    if arr[i] == true {
        for j in stride(from: i, through: N, by: i) {
            arr[j] = false
        }
        
        while N % i == 0 {
            N /= i
            print(i)
        }
    }
}