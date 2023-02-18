var arr = Array(repeating: Array(repeating: 0, count: 100), count: 100)
var sum = 0

for _ in 1...Int(readLine()!)! {
    var input = readLine()!.split(separator: " ").map{Int($0)!}
    var x = input[0]
    var y = input[1]
    
    for i in x-1...x+8{
        for j in y-1...y+8{
            arr[i][j] = 1
        }
    }
}

arr.forEach{sum += $0.reduce(0, +)}
print(sum)
