let ab = readLine()!.split(separator: " ").map{Int($0)!}
var A = Set<Int>()
var B = Set<Int>()

readLine()!.split(separator: " ").map{Int($0)!}.forEach{A.insert($0)}
readLine()!.split(separator: " ").map{Int($0)!}.forEach{B.insert($0)}

print(A.symmetricDifference(B).count)