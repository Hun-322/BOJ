func solution(_ numbers: [Int], _ target: Int) -> Int {
    var dict = Array(repeating: [:], count: numbers.count)

    func dfs(index: Int, sum: Int) -> Int {

        if index == numbers.count {
            return sum == target ? 1 : 0
        }

        if let cachedResult = dict[index][sum] {
            return cachedResult as! Int
        }

        let add = dfs(index: index + 1, sum: sum + numbers[index])
        let subtract = dfs(index: index + 1, sum: sum - numbers[index])

        dict[index][sum] = add + subtract

        return add + subtract
    }

    return dfs(index: 0, sum: 0)
}