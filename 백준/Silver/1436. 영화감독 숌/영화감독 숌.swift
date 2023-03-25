var n = Int(readLine()!)!
var temp = 1
var num = 666

while n != temp {
    var sum = 0
    num += 1
    
    for s in String(num) {
        if s == "6" {
            sum += 1
        }else {
            sum = 0
        }
        
        if sum == 3 {
            temp += 1
        }
    }
}
print(num)