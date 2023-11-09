let nm = readLine()!.split(separator: " ").map{Int($0)!}
let (n,m) = (nm[0], nm[1])
var dict = [Int:[Int]]()
var visited = Array(repeating: false, count: n)
var depth = 0
var answer = 0

for i in 0..<n {
    dict[i] = []
}

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    dict[input[0]]?.append(input[1])
    dict[input[1]]?.append(input[0])
}

func dfs(node: Int, depth: Int) {
    if depth == 4 {
        answer = 1
        return
    }
    
    visited[node] = true
    
    for n in dict[node]! {
        if !visited[n] {
            dfs(node: n, depth: depth + 1)
        }
    }
    
    visited[node] = false
}


for i in 0..<n {
    dfs(node: i, depth: depth)
    
    if answer == 1 {
        break
    }
}

print(answer)