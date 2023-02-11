var n = Int(readLine()!)!
var arr = Array(repeating: Array(repeating: 0, count: 2), count: n)

for i in 0..<n {
    arr[i] = readLine()!.split(separator: " ").map{Int($0)!}
}
arr = arr.sorted(by: {
    if $0[0] == $1[0] {
        return $0[1] < $1[1]
    }else {
        return $0[0] < $1[0]
    }})

for i in arr {
    print(i.map{String($0)}.joined(separator: " "))
}