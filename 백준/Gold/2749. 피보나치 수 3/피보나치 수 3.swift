var n = Int(readLine()!)!

var first = 0
var second = 1
var answer = 0

if n < 3 {
    print(1)
} else {
    for _ in 2...n%1500000{
        answer = (first + second) % 1000000
        first = second
        second = answer
    }
    print(answer)
}