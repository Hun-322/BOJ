let input = readLine()!.split(separator: " ").map{Int($0)!}
let minNumber = input[0], maxNumber = input[1] > 10000000 ? 10000000 : input[1]
var arr = Array(repeating: true, count: maxNumber + 1)

for i in 2...maxNumber {
    if arr[i] == true {
        for j in stride(from: i, through: maxNumber, by: i) {
            arr[j] = false
        }
        
        let prime = String(i)
        
        if Int(prime)! >= minNumber && prime == String(prime.reversed()) {
            print(prime)
        }
    }
}
print(-1)