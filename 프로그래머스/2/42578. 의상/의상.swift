import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var dict = [String:Int]()
    
    for c in clothes {
        dict[c[1]] = (dict[c[1]] ?? 0) + 1
    }
    
    return dict.values.map{$0 + 1}.reduce(1,*) - 1
}