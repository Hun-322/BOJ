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

dfs(N[2])

func dfs(_ node:Int) {
    visited[node] = num
    num += 1
    
    for i in arr[node]! {
        if visited[i] == 0 {
            dfs(i)
        }
    }
}

for i in 1..<visited.count {
    print(visited[i])
}