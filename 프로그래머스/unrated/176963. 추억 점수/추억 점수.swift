import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var dict: [String: Int] = [:]
    var answer = [Int]()
    
    for i in 0..<name.count {
        dict.updateValue(yearning[i], forKey: name[i])
    }
    
    photo.forEach { array in
                   var num = 0
                   
                   array.forEach {
                       if let point = dict[$0] {
                       num += point
                       }
                   }
                   answer.append(num)
                  }
    
    return answer
}