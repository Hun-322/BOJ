let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1]
var arr = [Int:[Int]]()
var visited = [Int]()
var answer = 0

for i in 1...n {
    arr[i] = []
}

for _ in 0..<m {
    let element = readLine()!.split(separator: " ").map{Int($0)!}
    arr[element[0]]?.append(element[1])
    arr[element[1]]?.append(element[0])
}

func dfs(_ node:Int) {
    if visited.contains(node) {
        return
    }
    
    visited.append(node)
    
    for n in arr[node]! {
        dfs(n)
    }
}

for i in 1...n {
    if !visited.contains(i) {
        answer += 1
        dfs(i)
    }
}
print(answer)