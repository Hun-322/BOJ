import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    var stack = skill.map { String($0) }
    var answer = skill_trees.count
    
    for skill_tree in skill_trees {
        var arr = stack
        
        for word in skill_tree.map { String($0) } {
            if arr.contains(word) {
                if arr.first == word {
                    arr.removeFirst()
                } else {
                    answer -= 1
                    break
                }
            }
        }
    }
    return answer
}