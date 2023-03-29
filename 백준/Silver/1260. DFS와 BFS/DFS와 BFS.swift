let N = readLine()!.split(separator: " ").map{Int($0)!}
var arr = [Int:[Int]]()
var visited = [Int]()

for i in 1...N[0] {
    arr[i] = []
}

for _ in 1...N[1] {
    var input = readLine()!.split(separator: " ").map{Int($0)!}

    arr[input[0]]?.append(input[1])
    arr[input[1]]?.append(input[0])
}

for i in 0...arr.count {
    arr[i]?.sort(by: {$0 < $1})
}

func dfs(_ node:Int) {
    if visited.contains(node) {
        return
    }

    visited.append(node)

    for i in arr[node]! {
        dfs(i)
    }
}

func bfs(_ node:Int) {
    var visitedQueue = [Int]()
    var needVisitedQueue = [node]
    
    while !needVisitedQueue.isEmpty {
        let node = needVisitedQueue.removeFirst()
        
        if !visitedQueue.contains(node) {
            visitedQueue.append(node)
            needVisitedQueue += arr[node]!
        }
    }
    print(visitedQueue.map{String($0)}.joined(separator: " "))
}

dfs(N[2])
print(visited.map{String($0)}.joined(separator: " "))
bfs(N[2])