let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int($0)!}
var set = Set<Int>()

arr.forEach{ set.insert($0) }
set.sorted().forEach{ print($0, terminator: " ")}