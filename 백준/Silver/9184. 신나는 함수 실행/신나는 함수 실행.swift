var dp = Array(repeating: Array(repeating: Array(repeating: 0, count: 51), count: 51), count: 51)

while true {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    let a = input[0], b = input[1], c = input[2]
    
    if input == [-1, -1, -1] {
        break
    }
    
    print("w(\(a), \(b), \(c)) = \(w(a,b,c))")
}


func w (_ a: Int, _ b: Int, _ c: Int) -> Int {
    if a <= 0 || b <= 0 || c <= 0 {
        return 1
    }
    
    if  a > 20 || b > 20 || c > 20 {
        return w(20,20,20)
    }
    
    if dp[a][b][c] > 0 {
        return dp[a][b][c]
    }
    
    if a < b && b < c {
        dp[a][b][c] = w(a,b,c-1) + w(a,b-1,c-1) - w(a,b-1,c)
        return dp[a][b][c]
    }else {
        dp[a][b][c] = w(a-1,b,c) + w(a-1,b-1,c) + w(a-1,b,c-1) - w(a-1,b-1,c-1)
        return dp[a][b][c]
    }
}