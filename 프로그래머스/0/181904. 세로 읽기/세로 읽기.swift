import Foundation

func solution(_ my_string:String, _ m:Int, _ c:Int) -> String {
    let str = my_string.map { String($0) }
    var answer = ""
    
    for i in stride(from: c-1, to: str.count, by: m) {
        answer += str[i]
    }
    
    return answer
}