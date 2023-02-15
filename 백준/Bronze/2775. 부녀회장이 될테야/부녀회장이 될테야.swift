let T = Int(readLine()!)!

for _ in 1...T {
    let k = Int(readLine()!)!
    let n = Int(readLine()!)!
    var arr = Array(repeating: Array(repeating: 1, count: n + 1), count: k + 1)
    
    for i in 1...n {
        arr[0][i] = i + 1
    }
    
    for j in 1...k {
        for k in 1...n {
            arr[j][k] = arr[j][k-1] + arr[j-1][k]
        }
    }
    print(arr[k][n-1])
}
