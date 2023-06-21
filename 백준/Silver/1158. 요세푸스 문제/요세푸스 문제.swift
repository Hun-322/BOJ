let input = readLine()!.split(separator: " ").map{Int($0)!}
var n = input[0], k = input[1]-1
var arr = (1...n).map{$0}

print("<", terminator: "")

while true {
    if arr.count == 1 { break }
    print(arr.remove(at: k), terminator: ", ")
    
    k = (k + (input[1] - 1)) % arr.count
}

print("\(arr.last!)>")