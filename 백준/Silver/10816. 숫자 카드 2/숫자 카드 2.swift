let N = Int(readLine()!)
let numberCards = readLine()!.split(separator: " ").map{Int($0)!}
let M = Int(readLine()!)
let temp = readLine()!.split(separator: " ").map{Int($0)!}
var dict = [Int:Int]()
var answer = [Int]()

for i in numberCards {
    dict[i,default: 0] += 1
}

for i in temp {
    answer.append(dict[i] ?? 0)
}

print(answer.map{String($0)}.joined(separator: " "))