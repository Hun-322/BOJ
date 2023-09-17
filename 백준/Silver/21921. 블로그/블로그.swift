let input = readLine()!.split{ $0 == " " }.map{ Int($0)! }
let arr = readLine()!.split{ $0 == " " }.map{ Int($0)! }
let N = input[0], X = input[1]
var sumArr = [0], sum = 0
var temp = [Int]()
var idx = 0

for i in arr {
    sum += i
    sumArr.append(sum)
}

while idx + X <= N {
    temp.append(sumArr[idx + X] - sumArr[idx])
    idx += 1
}

var answer = temp.max()!
print(answer == 0 ? "SAD" : "\(answer)\n\(temp.filter{ $0 == answer }.count)")