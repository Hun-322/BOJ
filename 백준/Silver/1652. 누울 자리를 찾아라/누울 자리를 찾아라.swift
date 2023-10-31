let n = Int(readLine()!)!
var arr = [[String]]()
var (w,l) = (0,0)

for _ in 0..<n {
    arr.append(readLine()!.map{String($0)})
}

for i in 0...1 {
    for j in 0..<n {
        var temp = 0
        
        for k in 0..<n {
            if (i == 0 ? arr[j][k] : arr[k][j]) == "." {
                temp += 1
                
                if temp == 2 {
                    (i == 0 ? (w += 1) : (l += 1))
                }
            } else {
                temp = 0
            }
        }
    }
}

print("\(w) \(l)")
