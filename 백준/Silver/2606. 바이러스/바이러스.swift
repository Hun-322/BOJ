let computerNumber = Int(readLine()!)!
let edge = Int(readLine()!)!
var arr = [Int:[Int]]()
var visited = [Int]()

for i in 1...computerNumber {
    arr[i] = []
}

for _ in 1...edge {
    var input = readLine()!.split(separator: " ").map{Int($0)!}
    arr[input[0]]?.append(input[1])
    arr[input[1]]?.append(input[0])
}

func dfs(_ node: Int) {
    if visited.contains(node) {
        return
    }
    
    visited.append(node)
    
    for n in arr[node]! {
        dfs(n)
    }
}

dfs(1)

print(visited.count - 1)