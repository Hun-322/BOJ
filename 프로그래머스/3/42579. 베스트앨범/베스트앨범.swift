import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    var dict = [String: [Int]]()
    var answer = [Int]()
    
    for i in genres.indices {
        var temp = dict[genres[i]]
        
        guard dict.updateValue([plays[i], i], forKey: genres[i]) != nil else { continue }
        
        let total = plays[i]
        temp![0] += total
        temp!.append(dict[genres[i]]![1])
        dict[genres[i]] = temp!
    }
    
    let sortedDict = dict.sorted { $0.1[0] > $1.1[0] }
    
    for arr in sortedDict {
        var value = arr.value[1...]
        let sortedValue = value.sorted { plays[$0] > plays[$1] }.prefix(2)
        answer.append(contentsOf: sortedValue)
    }
    
    return answer
}