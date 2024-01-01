let input = readLine()!.split(separator: " ").map{ Int($0)! }
let (f, s, g, u, d) = (input[0], input[1], input[2], input[3], input[4])

func bfs() {
    var visited = Array(repeating: false, count: f + 1)
    var queue = [(s, 0)]
    
    visited[s] = true
    
    while !queue.isEmpty {
        let pop = queue.removeFirst()
        let currentFloor = pop.0, num = pop.1
        
        if currentFloor == g {
            print(num)
            return
        }
        
        let nextUp = currentFloor + u
        if nextUp <= f && !visited[nextUp] {
            queue.append((nextUp, num + 1))
            visited[nextUp] = true
        }
        
        let nextDown = currentFloor - d
        if nextDown > 0 && !visited[nextDown] {
            queue.append((nextDown, num + 1))
            visited[nextDown] = true
        }
    }
    print("use the stairs")
}

bfs()