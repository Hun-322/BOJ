var N = Int(readLine()!)!
let timer = [300, 60, 10]
var answer = [Int]()

for i in 0...2 {
    answer.append(N / timer[i])
    N %= timer[i]
}
N == 0 ? answer.forEach{print($0, terminator: " ")} : print(-1)