let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], blackJackNumber = input[1]
var cardArray = readLine()!.split(separator: " ").map{Int($0)!}
var temp = 0
var answer = 0

for i in 0..<n {
    for j in i+1..<n {
        for k in j+1..<n {
            temp = cardArray[i] + cardArray[j] + cardArray[k]
            if blackJackNumber - temp >= 0 && answer < temp {
                answer = temp
            }
        }
    }
}

print(answer)
