let n = Int(readLine()!)!
var answer = 0
var temp = 0

for i in 1...n {
    temp = i
    
    temp += String(i).map{Int(String($0))!}.reduce(0, +)
    
    if temp == n {
        answer = i
        break
    }
}

print(answer == 0 ? 0 : answer)