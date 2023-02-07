var arr = Array(repeating: true, count: 10000+1)

for i in 2...10000 {
    if arr[i] == true {
        for j in stride(from: i*i, through: 10000, by: i) {
            arr[j] = false
        }
    }
}

let n = Int(readLine()!)!

for _ in 1...n {
    var input = Int(readLine()!)!
    var i = input/2
    
    while true {
        if arr[i] == true && arr[input-i] == true {
            print(i, input-i)
            break
        } else {
            i -= 1
        }
    }
}
