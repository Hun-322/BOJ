readLine()
var input = readLine()!.split(separator: " ").map{String($0)}
input.sort(by: {$0 + $1 > $1 + $0})

if input[0] == "0" {
    print(0)
}else {
    print(input.joined())
}