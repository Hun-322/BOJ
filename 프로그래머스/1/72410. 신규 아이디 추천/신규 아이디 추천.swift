import Foundation

func solution(_ new_id:String) -> String {
    let characterSet = CharacterSet(charactersIn: "abcdefghijklmnopqrstuvwxyz0123456789-_.")
    
    var answer = new_id
    .lowercased()
    .unicodeScalars
    .filter{ characterSet.contains($0) }
    .split{ $0 == "." }
    .map{ String($0) }
    .joined(separator: ".")
    
    if answer == "" {
        answer = "a"
    }
    
    if answer.count >= 16 {
        answer = answer.map{ String($0) }[0...14].joined()
        
        if answer.last == "." {
            answer.removeLast()
        }
    }
    
    if answer.count < 3 {
        answer += String(repeating: answer.last!, count: 3 - answer.count)
    }
    
    return answer
}