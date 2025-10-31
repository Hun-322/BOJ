class Solution {
    func isValid(_ s: String) -> Bool {
        var stack: [Character] = []
        let items: [Character: Character] = [")": "(", "}": "{", "]": "["]
        
        for char in s {
            if items.values.contains(char) {
                stack.append(char)
            } else if let match = items[char] {
                guard !stack.isEmpty, stack.removeLast() == match else {
                    return false
                }
            }
        }
        
        return stack.isEmpty
    }
}