var n = Int(readLine()!)!
var num = 0

while n > 0 {
    if n / 3 > 1 {
        n -= 3
        num += 1
    } else {
        n -= 1
        num += 1
    }
}
print(num % 2 == 0 ? "CY" : "SK")