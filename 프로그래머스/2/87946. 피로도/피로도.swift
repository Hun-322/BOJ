import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    var answer = 0
    var visited = Array(repeating: false, count: dungeons.count)
    
    func dfs(_ count: Int, _ k:Int) {
        if answer < count {
            answer = count
        }
        
        for i in 0..<dungeons.count {
            if !visited[i] && dungeons[i][0] <= k {
                visited[i] = true
                dfs(count + 1, k - dungeons[i][1])
                visited[i] = false
            }
        }
    }
    
    dfs(0, k)
    
    return answer
}