var input = readLine()!.split(separator: " ").map{Int($0)!}
let N = input[0]
let M = input[1]
var arr1 = [[Int]]()
var arr2 = [[Int]]()

for _ in 1...N {
    arr1.append(readLine()!.split(separator: " ").map{Int($0)!})
}

for _ in 1...N {
    arr2.append(readLine()!.split(separator: " ").map{Int($0)!})
}

for i in 0..<N {
    var answer = [String]()
    
    for j in 0..<M{
        answer.append("\(arr1[i][j] + arr2[i][j])")
    }
    
    print(answer.joined(separator: " "))
}