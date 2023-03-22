let N = Int(readLine()!)!
let inputN = readLine()!.split(separator: " ").map{Int($0)!}
let M = Int(readLine()!)!
let inputM = readLine()!.split(separator: " ").map{Int($0)!}
var dict = [Int:Int]()

for i in inputN {
    dict[i] = 0
}

for i in inputM {
    print(dict[i] != nil ? 1 : 0)
}