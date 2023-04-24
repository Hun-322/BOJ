let size = readLine()!.split(separator: " ").map{Int($0)!}
let m = size[0], n = size[1]
var queue = [(Int,Int)]()
var arr = [[Int]]()
var empty = 0
var count = 0

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int($0)!})
}

for i in 0..<n {
    for j in 0..<m {
        if arr[i][j] == 1 {
            queue.append((i,j))
        }else if arr[i][j] == 0 {
            empty += 1
        }
    }
}

bfs()
print( empty == count ? arr.map{$0.max()!}.max()! - 1 : -1 )

func bfs() {
    let dx = [-1,1,0,0], dy = [0,0,-1,1]
    var idx = 0
    
    while queue.count > idx {
        let (x,y) = queue[idx]
        idx += 1
        
        for i in 0..<4 {
            let (nx,ny) = (x + dx[i], y + dy[i])
            
            if (0..<n).contains(nx) && (0..<m).contains(ny) && arr[nx][ny] == 0 {
                queue.append((nx,ny))
                arr[nx][ny] = arr[x][y] + 1
                count += 1
            }
        }
    }
}