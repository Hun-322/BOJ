let N = Int(readLine()!)
var set = Set(readLine()!.split(separator: " ").map{Int($0)!})
let M = Int(readLine()!)
var temp = readLine()!.split(separator: " ").map{Int($0)!}

for i in temp {
    if set.contains(i) {
        print(1, terminator: " ")
    }else {
        print(0, terminator: " ")
    }
}