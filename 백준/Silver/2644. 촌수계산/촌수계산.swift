let n = Int(readLine()!)!
let personNumber = readLine()!.split(separator: " ").map { Int($0)! }
let m = Int(readLine()!)!
var visited = Array(repeating: false, count: n+1)
var dict: [[Int]] = Array(repeating: [], count: n+1)
var answer = -1

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    dict[input[0]].append(input[1])
    dict[input[1]].append(input[0])
}

func dfs(_ node: Int, _ sum: Int) {
    if node == personNumber[1] {
        answer = sum
        return
    }
    
    if visited[node] {
        return
    }
    
    visited[node] = true
    
    for n in dict[node] {
        dfs(n, sum + 1)
    }
}

dfs(personNumber[0], 0)

print(answer)