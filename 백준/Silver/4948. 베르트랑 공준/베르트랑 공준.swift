var arr = Array(repeating: true, count: 246913)

for i in 2...246912 {
    if arr[i] == true {
        for j in stride(from: i*i, through: 246913, by: i) {
            arr[j] = false
        }
    }
}

while true {
    var n = Int(readLine()!)!
    var sum = 0

    if n == 0 {
        break
    }
    
    for i in n+1...n*2 {
        if arr[i] {
            sum += 1
        }
    }
    print(sum)
}
