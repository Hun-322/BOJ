let N = Int(readLine()!)!
var A = readLine()!.split{$0 == " "}.map{Int($0)!}.sorted()
let B = readLine()!.split{$0 == " "}.map{Int($0)!}.sorted(by: >)
var answer = 0

for i in 0..<N {
    answer += A[i] * B[i]
}
print(answer)