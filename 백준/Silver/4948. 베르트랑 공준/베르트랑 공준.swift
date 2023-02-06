while true {
    var n = Int(readLine()!)!
    var sum = 0
    var arr = Array(repeating: true, count: n*2 + 1)
    
    if n == 0 {
        break
    }
    
    for i in 2..<arr.count {
        if arr[i] == true {
            for j in stride(from: i, through: arr.count-1, by: i) {
                arr[j] = false
            }
            if i > n {
                sum += 1
            }
        }
        
    }
    print(sum)
}