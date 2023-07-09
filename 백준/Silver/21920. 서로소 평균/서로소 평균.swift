let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map{Int($0)!}
let num = Int(readLine()!)!
var sum = [Int]()

for i in 0..<n {
    if gcd(num, input[i]) == 1 {
        sum.append(input[i])
    }
}

print(Double(sum.reduce(0, +)) / Double(sum.count))

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    }
    
    return gcd(b, a % b)
}