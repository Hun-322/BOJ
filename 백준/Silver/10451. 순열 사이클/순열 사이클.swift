let t = Int(readLine()!)!

for _ in 0..<t {
    let n = Int(readLine()!)!
    let arr = [0] + readLine()!.split(separator: " ").map{ Int($0)! }
    var visited = Array(repeating: false, count: arr.count)
    var answer = 0
    
    for i in 1..<arr.count {
        if visited[i] {
            continue
        }
        
        var queue = [arr[i]]
        visited[i] = true
        
        while !queue.isEmpty {
            let num = queue.removeFirst()
            
            if !visited[num] {
                queue.append(arr[num])
                visited[num] = true
            }
        }
        answer += 1
    }
    print(answer)
}