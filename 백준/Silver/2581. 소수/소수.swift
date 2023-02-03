import Foundation

let M = Int(readLine()!)!
let N = Int(readLine()!)!
var arr:[Int] = []

for i in M...N {
    var isPrime = true
    if i < 4 {
        isPrime = i == 1 ? false : true
    }else {
        for j in 2...Int(sqrt(Double(i))) {
            if i % j == 0 {
                isPrime = false
            }
        }
    }
    
    if isPrime {
        arr.append(i)
    }
}

if arr.count == 0 {
    print(-1)
}else {
    print(arr.reduce(0, +))
    print(arr[0])
}