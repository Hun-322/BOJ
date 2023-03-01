let N = Int(readLine()!)!
var sum = 0, i = 0

while N >= sum {
    i += 1
    sum += i
}
print(i-1)