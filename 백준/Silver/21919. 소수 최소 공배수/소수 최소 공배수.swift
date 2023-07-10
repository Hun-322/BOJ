let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map{Int($0)!}
var maxNum = input.max()! + 1
var arr = Array(repeating: true, count: maxNum)
var primes = Set<Int>()
var answer = Set<Int>()


for i in 2..<maxNum {
    if arr[i] == true {
        for j in stride(from: i, through: maxNum-1, by: i) {
            arr[j] = false
        }
        primes.insert(i)
    }
}

for i in input {
    if primes.contains(i) {
        answer.insert(i)
    }
}

if answer.count == 0 {
    print(-1)
} else {
    print(answer.reduce(1, *))
}

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    }
    
    return gcd(b, a % b)
}

func lcm(_ a:Int, _ b:Int) -> Int {
    return a * b / gcd(a, b)
}
