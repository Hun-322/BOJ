import Foundation

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    var visited = Array(repeating: false, count: words.count)
    var queue = [(begin, 0)]
    
    if !words.contains(target) {
        return 0
    }
    
    while !queue.isEmpty {
        let pop = queue.removeFirst()
        
        if pop.0 == target {
            return pop.1
        }
    
        for i in words.indices {
            if !visited[i] && zip(pop.0, words[i]).filter { $0 != $1 }.count == 1 {
                queue.append((words[i], pop.1 + 1))
                visited[i] = true
            }
        }
    }
    return 0
}