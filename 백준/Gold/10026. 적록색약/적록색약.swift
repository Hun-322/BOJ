let n = Int(readLine()!)!
var arr = [[String]]()
var first = ""
var answer = [0,0]

for _ in 0..<n {
    arr.append(readLine()!.map{String($0)})
}

for i in 0..<n {
    for j in 0..<n {
        if arr[i][j] != "r" && arr[i][j] != "b"{
            first = arr[i][j]
            bfs(i,j)
            answer[0] += 1
        }
    }
}

for i in 0..<n {
    for j in 0..<n {
        if arr[i][j] != "z" {
            first = arr[i][j]
            bfs(i,j)
            answer[1] += 1
        }
    }
}
print("\(answer[0]) \(answer[1])")


func bfs(_ r:Int, _ c:Int) {
    let dx = [0,0,-1,1], dy = [1,-1,0,0]
    var queue = [(r,c)]
    var idx = 0
    
    if first == "B" {
        arr[r][c] = "b"
    }else if first == "R" || first == "G" {
        arr[r][c] = "r"
    }else {
        arr[r][c] = "z"
    }
    
    while queue.count > idx {
        let (x,y) = queue[idx]
        idx += 1
        
        for i in 0..<4 {
            let (nx,ny) = (x + dx[i], y + dy[i])
            
            if (0..<n).contains(nx) && (0..<n).contains(ny) {
                if first == arr[nx][ny] {
                    queue.append((nx,ny))
                    
                    if first == "B" {
                        arr[nx][ny] = "b"
                    }else if first == "R" || first == "G" {
                        arr[nx][ny] = "r"
                    }else {
                        arr[nx][ny] = "z"
                    }
                }
            }
        }
    }
}