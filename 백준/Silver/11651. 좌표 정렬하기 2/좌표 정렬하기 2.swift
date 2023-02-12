var n = Int(readLine()!)!
var tuples: [(Int,Int)] = []

for _ in 0..<n {
    var input = readLine()!.split(separator: " ").map{Int($0)!}
    tuples.append((input[0], input[1]))
}

tuples = tuples.sorted(by: {
    if $0.1 == $1.1 {
        return $0.0 < $1.0
    }else {
        return $0.1 < $1.1
    }})

for i in tuples {
    print(i.0, i.1)
}
