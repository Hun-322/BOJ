let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let m = input[0]
    var priority = input[1]
    var arr = readLine()!.split(separator: " ").map{ Int($0)! }
    var answer = 0
    
    while !arr.isEmpty {
        let maxValue = arr.max()!
        priority -= 1
        
        if maxValue != arr[0] {
            arr.append(arr.removeFirst())
            
            if priority < 0 {
                priority = arr.count - 1
            }
        } else {
            answer += 1
            arr.removeFirst()
            
            if priority < 0 {
                print(answer)
                break
            }
        }
    }
}