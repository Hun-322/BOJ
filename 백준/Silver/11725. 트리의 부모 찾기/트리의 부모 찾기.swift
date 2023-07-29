let n = Int(readLine()!)!
var arr = [Int:[Int]]()

(1...n).forEach { arr[$0] = [] }

for _ in 1..<n {
    var input = readLine()!.split(separator: " ").map{ Int($0)! }
    arr[input[0]]?.append(input[1])
    arr[input[1]]?.append(input[0])
}

var visited = Array(repeating: 0, count: n + 1)

bfs()

for i in 2...n {
    print(visited[i])
}

func bfs() {
    var queue = [1]
    
    while !queue.isEmpty {
        let n = queue.removeFirst()
        guard let node = arr[n] else { continue }
        
        for i in node {
            guard visited[i] == 0 else { continue }
            visited[i] = n
            queue.append(i)
        }
    }
}