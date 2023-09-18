let input = readLine()!.split{ $0 == " " }.map{ Int($0)! }
let num = readLine()!.split{ $0 == " " }.map{ Int($0)! }
var arr = [0]
var sum = 0

for i in num {
    sum += i
    arr.append(sum)
}

for _ in 0..<input[1] {
    let arrRange = readLine()!.split{ $0 == " " }.map{ Int($0)! }
    print(arr[arrRange[1]] - arr[arrRange[0]-1])
}