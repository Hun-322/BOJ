let N = Int(readLine()!)!
var arr = [[Int]]()
for _ in 1...N {
    arr.append(Array(readLine()!).map{Int(String($0))!})
}

func bfs(_ r: Int, _ c: Int) -> Int {
    let dx = [1,-1,0,0]
    let dy = [0,0,1,-1]
    
    var queue = [(r,c)]
    var idx = 0
    var cnt = 1
    arr[r][c] = 0
    
    while queue.count > idx {
        let (x,y) = queue[idx]
        idx += 1
        
        for i in 0..<4 {
            let (nx,ny) = (x + dx[i], y + dy[i])
            
            if (0..<N).contains(nx) && (0..<N).contains(ny) && arr[nx][ny] == 1 {
                arr[nx][ny] = 0
                cnt += 1
                queue.append((nx,ny))
            }
        }
    }
    return cnt
}

var aptList : [Int] = []

for i in 0..<N {
    for j in 0..<N {
        if arr[i][j] == 1 {
            aptList.append(bfs(i, j))
        }
    }
}

print(aptList.count)
for num in aptList.sorted(by: <) {
    print(num)
}
