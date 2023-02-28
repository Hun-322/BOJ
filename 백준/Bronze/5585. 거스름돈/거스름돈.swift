var n = 1000-Int(readLine()!)!
var answer = 0
var arr = [500, 100, 50, 10, 5 , 1]

while n != 0 {
    answer += n / arr[0]
    n %= arr[0]
    arr.remove(at: 0)
}
print(answer)