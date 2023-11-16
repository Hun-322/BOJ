import Foundation

func solution(_ num_list:[Int]) -> Int {
    var even = 0, odd = 0
    
    num_list.indices.forEach{ $0 % 2 == 1 ? (odd += num_list[$0]) : (even += num_list[$0])}
    
    return even > odd ? even : odd
}