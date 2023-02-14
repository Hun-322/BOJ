import Foundation

let n = Int(readLine()!)!
var f = 0 , s = 1 , sum = 0

if n < 2 {
    print(n == 0 ? "0" : "1")
    exit(0)
}

for _ in 2...n {
    sum = f + s
    f = s
    s = sum
}
print(s)