var arr = [Int]()
var firstValue = 0
var secondValue = 0

for _ in 0..<9 {
    arr.append(Int(readLine()!)!)
}

let overNum = arr.reduce(0, +) - 100

for i in 0..<8 {
    for j in i+1..<9 {
        if arr[i] + arr[j] == overNum {
            firstValue = arr[i]
            secondValue = arr[j]
        }
    }
}

arr.remove(at: arr.firstIndex(of: firstValue)!)
arr.remove(at: arr.firstIndex(of: secondValue)!)

arr.sorted(by: <).forEach{print($0)}
