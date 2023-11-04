import Foundation

func solution(_ arr:[[Int]]) -> [[Int]] {
    var arr = arr
    var x = arr[0].count 
    var y = arr.count
    
    if x == y {
        return arr
    }
    
    if x > y {
        for _ in 0..<x-y {
        arr.append(Array(repeating: 0, count: x))
        }
    } else {
        for i in 0..<y {
            for j in 0..<y-x {
                arr[i].append(0)
            }
        }
    }
    
    return arr
}