let n = Int(readLine()!)!
var answer = 1, sum = 1

while n > sum {
    sum += answer * 6
    answer += 1
}
print(n == 1 ? 1 : answer)