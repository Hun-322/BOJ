let input = readLine()!.split{$0 == " "}.map{Int($0)!}
var n = input[0], k = input[1]-1
var arr = (1...n).map{$0}

print("<", terminator: "")

while arr.count != 1 {
    print(arr.remove(at: k), terminator:  ", ")
    k = (k + (input[1] - 1)) % arr.count
}

print("\(arr.last!)>")