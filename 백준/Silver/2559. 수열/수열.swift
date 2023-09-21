let input = readLine()!.split{ $0 == " " }.map{ Int($0)! }
let n = input[0], k = input[1]
let sequence = readLine()!.split{ $0 == " " }.map{ Int($0)! }
var arr = [0], sum = 0, idx = 0

for i in sequence {
    sum += i
    arr.append(sum)
}

var temp = arr[k] - arr[0]

for i in k...n {
    temp = max(temp, arr[i] - arr[i-k])
}
print(temp)
