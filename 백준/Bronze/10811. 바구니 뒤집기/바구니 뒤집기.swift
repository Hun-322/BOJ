let input = readLine()!.split(separator: " ").map{Int($0)!}
var arr = [Int](0...input[0]-1)

for _ in 1...input[1] {
    let i = readLine()!.split(separator: " ").map{Int($0)!}
    arr.replaceSubrange(i[0]-1...i[1]-1, with: arr[i[0]-1...i[1]-1].reversed())
}

arr.forEach{print($0+1, terminator: " ")}