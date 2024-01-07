let ns = readLine()!.split(separator: " ").map{ Int($0)! }
var arr = readLine()!.split(separator: " ").map{ Int($0)! }
let (n, s) = (ns[0], ns[1])
var start = 0
var end = 0
var sum = 0
var answer = Int.max

while start < n {
    if sum < s {
        if end < n {
            sum += arr[end]
            end += 1
        } else {
            break
        }
    } else {
        answer = min(answer, end - start)
        sum -= arr[start]
        start += 1
    }
}

print(answer == Int.max ? 0 : answer)