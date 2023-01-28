let n = Int(readLine()!)!
var count = 0
var max = 0

while n > max {
    count += 1
    max += count
}
print(count % 2 == 0 ? "\(count - (max - n))/\(max - n + 1)" : "\(max - n + 1)/\(count - (max - n))")