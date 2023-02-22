var input = readLine()!.split(separator: " ").map{Int($0)!}
var arr = Array(repeating: 0, count: input[0])

for _ in 1...input[1] {
    var i = readLine()!.split(separator: " ").map{Int($0)!}
    
    for n in i[0]-1...i[1]-1 {
        arr[n] = i[2]
    }
}

arr.forEach{print($0, terminator: " ")}