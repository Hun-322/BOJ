let nk = readLine()!.split(separator: " ").map{ Int($0)! }
let (n, k) = (nk[0], nk[1])
var visited = Array(repeating: false, count: 100001)
var queue = [(n,0)]

visited[n] = true

func bfs() {
    
    while !queue.isEmpty {
        let pop = queue.removeFirst()
        
        if pop.0 == k {
            print(pop.1)
            return
        }
        
        let minusLocation = pop.0 - 1
        if minusLocation >= 0 && !visited[minusLocation] {
            queue.append((minusLocation, pop.1 + 1))
            visited[minusLocation] = true
        }
        
        let plusLocation = pop.0 + 1
        if plusLocation <= 100000 && !visited[plusLocation] {
            queue.append((plusLocation, pop.1 + 1))
            visited[plusLocation] = true
        }
        
        let tp = pop.0 * 2
        if tp <= 100000 && !visited[tp] {
            queue.append((tp, pop.1 + 1))
            visited[tp] = true
        }
    }
}

bfs()