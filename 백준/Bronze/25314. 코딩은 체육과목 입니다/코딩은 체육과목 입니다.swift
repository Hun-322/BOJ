var arr = [String]()

for _ in 1...Int(readLine()!)!/4 {
    arr.append("long")
}
print(arr.joined(separator: " ") + " int")