let n = Int(readLine()!)!
var cardArray = Array(1...n)
var front = 0

for _ in 0..<n - 1 {
    cardArray.append(cardArray[front + 1])
    front += 2
}
print(cardArray[front])