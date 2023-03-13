for _ in 1...Int(readLine()!)! {
    var input = Array(readLine()!)
    var sum = 0
    
    for i in 0..<input.count {
        if input[i] == "(" {
            sum += 1
        }else {
            sum -= 1
        }
        
        if sum < 0 {
            break
        }
    }
    print(sum == 0 ? "YES" : "NO")
}
