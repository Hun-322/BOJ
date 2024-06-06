import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    let a = a.sorted(), b = b.sorted()
    var answer = 0
    var temp = 0

    for i in 0..<a.count {
        if a[temp] < b[i] {
            temp += 1
            answer += 1
        }
    }
    return answer
}