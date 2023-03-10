let N = readLine()!.split(separator: " ").map{Int($0)!}
var arr = [[Int]]()

for _ in 1...N[1] {
    arr.append(readLine()!.split(separator: " ").map{Int($0)!})
}

var packageArr = arr.sorted(by: {$0[0] < $1[0]})
arr = arr.sorted(by: {$0[1] < $1[1]})

let single = arr[0][1] * N[0]
let package = (N[0] / 6 + 1) * packageArr[0][0]
let sum = (N[0] / 6) * packageArr[0][0] + (N[0] % 6) * arr[0][1]

print(min(sum, min(single, package)))
