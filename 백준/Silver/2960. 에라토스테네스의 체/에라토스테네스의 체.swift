let input = readLine()!.split(separator: " ").map{Int($0)!}
var arr = Array(repeating: true, count: input[0] + 1)
var num = 0

for i in 2..<input[0] + 1 {
    for j in stride(from: i, to: input[0] + 1, by: i) {
        if arr[j] {
            arr[j] = false
            num += 1
            if num == input[1] {
                print(j)
                break
            }
        }
    }
}