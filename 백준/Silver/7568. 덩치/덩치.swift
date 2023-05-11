let n = Int(readLine()!)!
var sizeArray = [(Int, Int)]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    sizeArray.append((input[0], input[1]))
}

for i in 0..<n {
    var num = 1
    
    for j in 0..<n {
        if sizeArray[i].0 < sizeArray[j].0 && sizeArray[i].1 < sizeArray[j].1 {
            num += 1
        }
    }
    print(num, terminator: " ")
}