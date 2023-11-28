let mnh = readLine()!.split(separator: " ").map { Int($0)! }
let (m, n, h) = (mnh[0], mnh[1], mnh[2])
var arr = Array(repeating: Array(repeating: [Int](), count: n), count: h)
var queue = [(Int, Int, Int)]()
var count = 0
var empty = 0

for i in 0..<h {
    for j in 0..<n {
        arr[i][j].append(contentsOf: readLine()!.split(separator: " ").map{ Int($0)! })
    }
}

for i in 0..<h {
    for j in 0..<n {
        for k in 0..<m {
            if arr[i][j][k] == 1 {
                queue.append((i, j, k))
            } else if arr[i][j][k] == 0 {
                empty += 1
            }
        }
    }
}

bfs()
print(empty == count ? arr.map { $0.compactMap { $0.max()! }.max()! }.max()! - 1 : -1)

func bfs() {
    let dx = [-1, 1, 0, 0, 0, 0], dy = [0, 0, -1, 1, 0, 0], dz = [0, 0, 0, 0, -1, 1]
    var idx = 0
    
    while queue.count > idx {
        let (x,y,z) = queue[idx]
        idx += 1
        
        for i in 0..<6 {
            let (nx, ny, nz) = (x + dx[i], y + dy[i], z + dz[i])
            
            if (0..<h).contains(nx) && (0..<n).contains(ny) && (0..<m).contains(nz) && arr[nx][ny][nz] == 0 {
                queue.append((nx, ny, nz))
                arr[nx][ny][nz] = arr[x][y][z] + 1
                count += 1
            }
        }
    }
}