readLine()
var arr = readLine()!.split(separator: " ").map{Int($0)!}
var sort = arr.sorted(), dict = [Int:Int](), temp = 0

for i in sort {
    if dict[i] == nil {
        dict[i] = temp
        temp += 1
    }
}
print(arr.map{String(dict[$0]!)}.joined(separator: " "))