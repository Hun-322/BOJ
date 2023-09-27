let input = readLine()!.split(separator: " ").map{ Int($0)! }
var num = 1

while true {
    if (num - input[0]) % 15 == 0 && (num - input[1]) % 28 == 0 && (num - input[2]) % 19 == 0 {
        print(num)
        break
    }
    
    num += 1
}