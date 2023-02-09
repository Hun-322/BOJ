let n = readLine()!.split(separator: " ").map{Int($0)!}
var arr:[Int] = []

arr = readLine()!.split(separator: " ").map{Int($0)!}.sorted(by: >)
print(arr[n[1]-1])