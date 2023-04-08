let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1]
var arr = [[Int]]()

for _ in 0..<n {
    arr.append(Array(readLine()!).map{Int(String($0))!})
}

func bfs(_ r: Int, _ c: Int){
    let dx = [1,-1,0,0]
    let dy = [0,0,-1,1]
    
    var queue = [(r,c)]
    var idx = 0
    arr[r][c] = 1
    
    while queue.count > idx {
        let (x,y) = queue[idx]
        idx += 1
        
        for i in 0..<4 {
            let (nx, ny) = (x + dx[i], y + dy[i])

            
            if (0..<n).contains(nx) && (0..<m).contains(ny) && arr[nx][ny] == 1 {
                arr[nx][ny] = arr[x][y] + 1
                queue.append((nx,ny))
            }
        }
    }
}

bfs(0, 0)

print(arr[n - 1][m - 1])