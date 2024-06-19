import Foundation

func solution(_ my_string:String) -> [String] {
    var str = my_string.map { String($0) }
    var answer = [String]()
    
    for i in 0..<str.count {
        answer.append(str[i...str.count-1].joined())
    }
    
    return answer.sorted()
}