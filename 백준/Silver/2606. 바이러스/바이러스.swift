import Foundation

let computerNum = Int(readLine()!)!
let edge = Int(readLine()!)!
var arr = [Int:[Int]]()
var visited = Array(repeating: false, count: computerNum+1)
var answer = 0

if edge == 0 {
    print(0)
    exit(0)
}

for i in 1...computerNum {
    arr[i] = []
}

for _ in 1...edge {
    var input = readLine()!.split(separator: " ").map{Int($0)!}
    arr[input[0]]?.append(input[1])
    arr[input[1]]?.append(input[0])
}

func dfs(_ node: Int) {
    if visited[node] {
        return
    }
    
    visited[node] = true
    
    for n in arr[node]! {
        dfs(n)
    }
}

dfs(1)

for i in visited {
    if i {
        answer += 1
    }
}

print(answer - 1)
