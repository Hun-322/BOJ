let n = Int(readLine()!)!

for _ in 1...n {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    
    print(lcm(input[0], input[1]))
}

func gcd(_ a:Int, _ b:Int) -> Int {
    if b == 0 {
        return a
    }
    
    return gcd(b, a % b)
}

func lcm(_ a:Int, _ b:Int) -> Int {
    return a * b / gcd(a, b)
}