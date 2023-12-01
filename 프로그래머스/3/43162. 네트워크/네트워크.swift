import Foundation

func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    var dict = [Int:[Int]]()
    var visited = Array(repeating: false, count: n)
    var answer = 0
    
    for i in 0..<n {
        dict[i] = []
    }
    
    for i in 0..<computers.count {
        for j in 0..<computers[i].count {
            if computers[i][j] == 1 {
                dict[i]?.append(j)
            }
        }
    }
    
    func dfs(_ node: Int) {
        visited[node] = true
        
        for i in dict[node]! {
            if !visited[i] {
                visited[i] = true
                dfs(i)
            }
        }
    }
    
    for i in 0..<n {
        if !visited[i] {
            dfs(i)
            answer += 1
        }
    }
    
    return answer
}