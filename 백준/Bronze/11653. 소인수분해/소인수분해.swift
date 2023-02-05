var N = Int(readLine()!)!
var num = 2
    
while N > 1 {
    if num * num > N {
        print(N)
        break
    }
    
    while N % num == 0 {
        N /= num
        print(num)
    }
    num += 1
}