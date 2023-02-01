let N = Int(readLine()!)!

for _ in 1...N {
    var input = readLine()!.split(separator: " ").map{ Int($0)! }
    var room = 0
    
    if input[2] % input[0] == 0 {
        room = input[0] * 100 + input[2] / input[0]
    } else {
        room = (input[2] % input[0]) * 100 + (input[2] / input[0] + 1)
    }
    print(room)
}