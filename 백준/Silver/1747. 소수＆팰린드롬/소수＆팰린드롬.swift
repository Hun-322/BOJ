let n = Int(readLine()!)!
var arr = Array(repeating: true, count: 1003002)
var primes = [String]()

for i in 2...1003001 {
    if arr[i] == true {
        for j in stride(from: i, through: 1003001, by: i) {
            arr[j] = false
        }
        primes.append(String(i))
    }
}

for i in primes {
    if Int(i)! >= n && i == String(i.reversed()) {
        print(i)
        break
    }
}
