let input = readLine()!.split(separator: " ").map{Int($0)!}
var arr = Array(repeating: true, count: input[1] + 1)

for i in 2...input[1] {
    if arr[i] == true {
        for j in stride(from: i, through: input[1], by: i) {
            arr[j] = false
        }
        if i >= input[0] {
            print(i)
        }
    }
}