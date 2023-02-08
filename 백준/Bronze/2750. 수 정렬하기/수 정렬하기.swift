let N = Int(readLine()!)!
var arr:[Int] = []

for _ in 1...N {
    arr.append(Int(readLine()!)!)
}

for i in arr.sorted() {
    print(i)
}