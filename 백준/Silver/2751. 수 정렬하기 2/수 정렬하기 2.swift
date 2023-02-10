let n = Int(readLine()!)!
var arr = [Int]()

for _ in 1...n {
    arr.append(Int(readLine()!)!)
}

for i in arr.sorted(){
    print(i)
}