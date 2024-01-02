let n = Int(readLine()!)!
var arr = [[Int]]()
var answer = [Int]()

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{ Int($0)! })
}

for height in 0...100 {
    var visited = Array(repeating: Array(repeating: false, count: n), count: n)
    var safeCount = 0
    
    for i in 0..<n {
        for j in 0..<n {
            if arr[i][j] > height && !visited[i][j] {
                safeCount += 1
                bfs(i, j, height, &visited)
            }
        }
    }
    answer.append(safeCount)
}

func bfs(_ r: Int, _ c: Int, _ height: Int, _ visited: inout [[Bool]]) {
    let dx = [1, -1, 0, 0], dy = [0, 0, 1, -1]
    var queue = [(r, c)]
    visited[r][c] = true
    
    while !queue.isEmpty {
        let (x, y) = queue.removeFirst()
        
        for i in 0..<4 {
            let (nx, ny) = (x + dx[i], y + dy[i])
            
            if (0..<n).contains(nx) && (0..<n).contains(ny) && arr[nx][ny] > height && !visited[nx][ny]{
                queue.append((nx, ny))
                visited[nx][ny] = true
            }
        }
    }
}

print(answer.max()!)