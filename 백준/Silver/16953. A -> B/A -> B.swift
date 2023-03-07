var N = readLine()!.split{$0 == " "}.map{Int($0)!}
var answer = 1

while N[0] < N[1] {
    if N[1] % 2 == 0 {
        N[1] /= 2
    }else if N[1] % 10 == 1{
        N[1] /= 10
    }else {
        break
    }
    answer += 1
}
print(N[0] == N[1] ? answer : -1)
