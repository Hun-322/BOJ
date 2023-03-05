let s = Array(readLine()!)
let zero = s.split{$0 == "0"}.count, one = s.split{$0 == "1"}.count
print(zero > one ? one : zero)