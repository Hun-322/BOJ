let n = Int(readLine()!)!

for _ in 1...n {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    var sum = 0
    
    for i in 1..<input.count - 1 {
        for j in i+1..<input.count {
            sum += gcd(input[i], input[j])
        }
    }
    print(sum)
}

private func gcd(_ a:Int, _ b:Int) -> Int {
    if b == 0 {
        return a
    }
    
    return gcd(b, a % b)
}