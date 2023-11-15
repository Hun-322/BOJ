import Foundation

func solution(_ num_list:[Int]) -> Int {
    let arr = num_list.map { String($0) }
    var even = "", odd = ""
    
    for i in arr {
        if Int(i)! % 2 == 1 {
            even += i
        } else {
            odd += i
        }
    }
    
    return Int(even)! + Int(odd)!
}