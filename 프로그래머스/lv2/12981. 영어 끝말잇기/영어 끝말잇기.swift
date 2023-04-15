import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var arr: [String] = []
    var num = 0

    for i in 0..<words.count {
        if i-1 >= 0 {
            if words[i-1].last! != words[i].first! {
                num = i
                break
            }
        }

        if arr.contains(words[i]) {
            num = i
            break
        }

        arr.append(words[i])
    }
    
    if num == 0 {
        return [0,0]
    }
    
    return [num % n + 1, num / n + 1]
}
