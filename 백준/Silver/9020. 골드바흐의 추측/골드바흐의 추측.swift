var arr = Array(repeating: true, count: 10000+1)
var isPrime:[Int] = []

for i in 2...10000 {
    if arr[i] == true {
        for j in stride(from: i*i, through: 10000, by: i) {
            arr[j] = false
        }
    }
    if arr[i] {
        isPrime.append(i)
    }
}

let n = Int(readLine()!)!

for _ in 1...n {
    var input = Int(readLine()!)!
    var first = isPrime.filter{ input/2 <= $0 && input > $0 }.map{input-$0}.filter{isPrime.contains($0)}[0]
    
    print(first ,input-first)
}
