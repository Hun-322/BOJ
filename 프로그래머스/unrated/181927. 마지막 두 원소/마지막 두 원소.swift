import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    var arr = num_list

    arr.append(arr.last! > arr[arr.count-2] ? (arr.last! - arr[arr.count-2]) : (arr.last! * 2))
    return arr
}