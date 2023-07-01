let input = readLine()!.split(separator: " ").map{Int($0)!}
let a = input[0], b = input[1], c = input[2], m = input[3]
var answer = 0
var num = 0

if a > m {
    print(0)
} else {
    for _ in 1...24 {
        if num + a > m {
            num = (num - c) < 0 ? 0 : num - c
            continue
        }
        num += a
        answer += b
    }
    print(answer)
}