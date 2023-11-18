import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var arr1 = cards1, arr2 = cards2
    
    for word in goal {
        if !arr1.isEmpty, arr1[0] == word {
            arr1.removeFirst()
        } else if !arr2.isEmpty, arr2[0] == word {
            arr2.removeFirst()
        } else {
            return "No"
        }
    }
    
    return "Yes"
}