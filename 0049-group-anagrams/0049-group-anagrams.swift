class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var groups: [(key: String, words: [String])] = []
        
        for str in strs {
            let sortedStr = String(str.sorted())
            var isGrouped = false
            
            for i in groups.indices {
                if groups[i].key == sortedStr {
                    groups[i].words.append(str)
                    isGrouped = true
                    break
                }
            }
            
            if !isGrouped {
                groups.append((key: sortedStr, words: [str]))
            }
        }
        
        return groups.map { $0.words }
    }
}