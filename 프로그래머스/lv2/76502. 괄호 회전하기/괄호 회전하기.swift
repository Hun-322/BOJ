import Foundation

func solution(_ s:String) -> Int {
    let word: [Character:Character] = ["(":")", "{":"}", "[":"]"]
    var str = s.map{$0}
    var num = 0
    
    if s.count % 2 == 1 {
        return 0
    }
    
    for _ in str {
        var stack = [Character]()
        
        str.append(str.removeFirst())

        for s in str {
            if !stack.isEmpty && word[stack.last!] == s {
                stack.removeLast()
            }else {
                stack.append(s)
            }
        }
    
        if stack.isEmpty {
            num += 1
        }
    }
    
    return num
}