let input = readLine()!.split{ $0 == " " }.map{ Int($0)! }
let N = input[0], M = input[1]
var arr = [[Int](repeating: 0, count: N + 1)]

for _ in 0..<N {
    arr.append( [0] + readLine()!.split(separator: " ").map{ Int($0)! })
}

for i in 1...N {
    for j in 1...N {
        arr[i][j] += arr[i-1][j] + arr[i][j-1] - arr[i-1][j-1]
    }
}

for _ in 0..<M {
    let coordinate = readLine()!.split(separator: " ").map{ Int($0)! }
    let y = coordinate[0], x = coordinate[1], y2 = coordinate[2], x2 = coordinate[3]
    
        print(arr[y2][x2] - arr[y - 1][x2] - arr[y2][x - 1] + arr[y - 1][x - 1])
}