var input = readLine()!.split{$0 == " "}.map{Int($0)!}
var arr = [Int]()
var sum = 0

for _ in 1...input[0] {
    var i = Int(readLine()!)!
    
    if input[1] >= i {
        arr.append(i)
    }else {
        break
    }
}

arr = arr.sorted(by: >)
arr.forEach{
    sum += input[1] / $0
    input[1] %= $0

    if input[1] == 0 {
        return
    }
}

print(sum)