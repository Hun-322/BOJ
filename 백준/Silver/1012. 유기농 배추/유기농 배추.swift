let t = Int(readLine()!)!

for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    let m = input[0], n = input[1], k = input[2]
    var arr = Array(repeating: Array(repeating: 0, count: n), count: m)
    var answer = 0
    
    for i in 0..<k {
        var coordinate = readLine()!.split(separator: " ").map{Int($0)!}
        arr[coordinate[0]][coordinate[1]] += 1
    }
    
    func dfs(_ r: Int, _ c: Int) -> Int {
        let dx = [-1,1,0,0]
        let dy = [0,0,-1,1]
        
        var queue = [(r,c)]
        var idx = 0
        var cnt = 1
        
        arr[r][c] = 0
        
        while queue.count > idx {
            let (x, y) = queue[idx]
            idx += 1
            
            for i in 0..<4 {
                let (nx, ny) = (x + dx[i], y + dy[i])
                
                if (0..<m).contains(nx) && (0..<n).contains(ny) && arr[nx][ny] == 1 {
                    cnt += 1
                    arr[nx][ny] = 0
                    queue.append((nx, ny))
                }
            }
        }
        return cnt
    }
    
    for i in 0..<m {
        for j in 0..<n {
            if arr[i][j] == 1 {
                dfs(i, j)
                answer += 1
            }
        }
    }
    
    print(answer)
}
