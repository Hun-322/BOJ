let nm = readLine()!.split{ $0 == " "}.map{Int($0)!}
let (n,m) = (nm[0], nm[1])
var arr = [[Int](repeating: 0, count: m+1)]

for _ in 0..<n {
    arr.append([0] + readLine()!.split{ $0 == " "}.map{Int($0)!})
}

for i in 1...n {
    for j in 1...m {
         arr[i][j] += arr[i-1][j] + arr[i][j-1] - arr[i-1][j-1]
    }
}
let k = Int(readLine()!)!

for _ in 0..<k {
    let input = readLine()!.split{ $0 == " "}.map{Int($0)!}
    let (x, y, x2, y2) = (input[0], input[1], input[2], input[3])
    
    print(arr[x2][y2] - arr[x - 1][y2] - arr[x2][y - 1] + arr[x - 1][y - 1])
}