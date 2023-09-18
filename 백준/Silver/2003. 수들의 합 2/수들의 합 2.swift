let input = readLine()!.split{ $0 == " " }.map{ Int($0)! }
let sequence = readLine()!.split{ $0 == " " }.map{ Int($0)! }
var num = 0

for i in 0..<input[0] {
    var sum = 0
    
    for j in i..<input[0] {
        sum += sequence[j]
        
        if sum == input[1] {
           num += 1
        }
    }
}
print(num)