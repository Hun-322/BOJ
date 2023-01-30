var N = Int(readLine()!)!
var sum = 0

while N > 2{
    N % 5 == 0 ? (N -= 5, sum += 1) : (N -= 3, sum += 1)
}
print(N == 0 ? sum : -1)