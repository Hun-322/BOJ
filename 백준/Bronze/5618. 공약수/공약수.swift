let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map{Int($0)!}

let num = input.count == 2 ? gcd(input[0],input[1]) : gcd(gcd(input[0],input[1]), input[2])

for i in 1...num {
    if num % i == 0 {
        print(i)
    }
}

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcd(b, a % b)
    }
}