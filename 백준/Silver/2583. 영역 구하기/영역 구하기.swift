let mnk = readLine()!.split(separator: " ").map{ Int($0)! }
let (m, n, k) = (mnk[0], mnk[1], mnk[2])
var arr = Array(repeating: Array(repeating: 0, count: n), count: m)
var answer = [Int]()

for _ in 0..<k {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let (y, x, y2, x2) = (input[0], input[1], input[2], input[3])
    
    for i in x..<x2 {
        for j in y..<y2 {
            arr[i][j] += 1
        }
    }
}

func bfs(_ r:Int, _ c:Int) {
    let dx = [-1, 1, 0, 0], dy = [0, 0, -1, 1]
    var queue = [(r,c)]
    var idx = 0
    
    while queue.count > idx {
        let (x, y) = queue[idx]
        idx += 1
        
        
        for i in 0..<4 {
            let (nx, ny) = (x + dx[i], y + dy[i])
            
            if (0..<m).contains(nx) && (0..<n).contains(ny) && arr[nx][ny] == 0 {
                queue.append((nx, ny))
                arr[nx][ny] = 1
            }
        }
    }
    answer.append(queue.count)
}

for i in 0..<m {
    for j in 0..<n {
        if arr[i][j] == 0 {
            arr[i][j] = 1
            bfs(i, j)
        }
    }
}

print("\(answer.count)\n\(answer.sorted().map{ String($0) }.joined(separator: " "))")