let n = Int(readLine()!)!
var arr = [0, 1]

for i in 2...41 {
    let num = arr[i-1] + arr[i-2]
    arr.append(num)
}

for _ in 0..<n {
    let num = Int(readLine()!)!

    print(num == 0 ? "\(arr[num+1]) \(arr[num])" : "\(arr[num-1]) \(arr[num])")
}