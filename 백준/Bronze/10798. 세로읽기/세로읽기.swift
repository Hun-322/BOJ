var arr = [[Character]]()

for _ in 1...5 {
    arr.append(Array(readLine()!))
}

for i in 0...14 {
    for j in 0...4{
        if i < arr[j].count{
            print(arr[j][i], terminator: "")
        }
    }
}