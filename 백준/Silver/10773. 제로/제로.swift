var arr = [Int]()

for _ in 1...Int(readLine()!)! {
    var input = Int(readLine()!)!
    
    if input == 0 {
        arr.popLast()
    }else {
        arr.append(input)
    }
}
print(arr.reduce(0, +))
