let N = readLine()!.split(separator: " ").map{Int($0)!}
var visited = Array(repeating: 0, count: N[0]+1)
var arr = [Int:[Int]]()
var num = 1

for i in 1...N[0] {
    arr[i] = []
}

for _ in 1...N[1] {
    var input = readLine()!.split(separator: " ").map{Int($0)!}
    
    arr[input[0]]?.append(input[1])
    arr[input[1]]?.append(input[0])
}

for i in 0..<N[0] {
    arr[i]?.sort(by: {$0 < $1})
}

bfs(N[2])

func bfs(_ node:Int) {
    var queue = [node]
    var index = 0
    
    visited[node] = num
    num += 1
    
    while index < queue.count {
        let temp = queue[index]
        for i in arr[temp]! {
            if visited[i] == 0 {
                queue.append(i)
                visited[i] = num
                num += 1
            }
        }
        index += 1
    }
}

for i in 1..<visited.count {
    print(visited[i])
}