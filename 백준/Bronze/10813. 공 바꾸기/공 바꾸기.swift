var input = readLine()!.split(separator: " ").map{Int($0)!}
var arr = [Int]()

for i in 1...input[0]{
    arr.append(i)
}

for _ in 1...input[1] {
    var i = readLine()!.split(separator: " ").map{Int($0)!}
    arr.swapAt(i[0]-1, i[1]-1)
}

arr.forEach{print($0, terminator: " ")}