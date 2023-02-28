let N = Int(readLine()!)!
var arr = [Int]()

for _ in 1...N {
    arr.append(Int(readLine()!)!)
}

arr = arr.sorted(by: >)
var max = arr[0]

for i in 1..<N {
    if max < arr[i] * (i+1) {
        max = arr[i] * (i+1)
    }
}
print(max)