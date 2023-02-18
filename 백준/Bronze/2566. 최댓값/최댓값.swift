var arr = [[Int]]()
var maxValue = [Int]()
for i in 0...8 {
    arr.append(readLine()!.split(separator: " ").map{Int($0)!})
    maxValue.append(arr[i].max()!)
}

print(maxValue.max()!)

for i in 0...8{
    if arr[i].firstIndex(of: maxValue.max()!) != nil {
        print(i+1 ,arr[i].firstIndex(of: maxValue.max()!)!+1)
    }
}