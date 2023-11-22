import Foundation

func solution(_ s:String) -> [Int] {
    let s = s.components(separatedBy: "},{")
    var arr = [[Int]]()
    var answer = [Int]()
    
    for i in 0..<s.count {
        let temp = s[i].map{ String($0) }
        .filter{ $0 != "{" && $0 != "}" }.joined()
        
        arr.append(temp.split{ $0 == "," }.map{ Int($0)! })
    }
    
    arr.sort(by: {$0.count < $1.count})
    
    for i in 0..<arr.count {
        if i == 0 {
            answer.append(arr[i][0])
        } else {
            answer.append(arr[i].filter{ !answer.contains($0) }[0])
        }
    }
    
    return answer
}