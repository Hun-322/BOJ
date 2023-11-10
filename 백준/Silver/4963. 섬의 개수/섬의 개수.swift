while true {
    let wh = readLine()!.split(separator: " ").map{Int($0)!}
    
    if wh == [0,0] {
        break
    }
    
    let (w,h) = (wh[0], wh[1])
    var arr = [[Int]]()
    var answer = 0
    
    for _ in 0..<h {
        arr.append(readLine()!.split(separator: " ").map{Int($0)!})
    }
    
    for h in 0..<h {
        for w in 0..<w {
            if arr[h][w] == 1 {
                bfs(h, w)
                answer += 1
            }
        }
    }
    
    print(answer)
    
    func bfs(_ r:Int, _ c:Int) {
        let dx = [-1,-1,-1,0,0,1,1,1], dy = [-1,0,1,-1,1,-1,0,1]
        var queue = [(r,c)]
        var idx = 0
        
        while queue.count > idx {
            let (x,y) = queue[idx]
            idx += 1
            
            for i in 0..<dx.count {
                let (nx,ny) = (x + dx[i], y + dy[i])
                
                if (0..<h).contains(nx) && (0..<w).contains(ny) && arr[nx][ny] == 1 {
                    queue.append((nx,ny))
                    arr[nx][ny] = 0
                }
                
            }
        }
    }
}