let nm = readLine()!.split{ $0 == " "}.map{ Int($0)! }
let (n, m) = (nm[0], nm[1])
var set = Set<String>()
var num = 0

for _ in 0..<n {
    set.insert(readLine()!)
}

for _ in 0..<m {
    num += set.contains(readLine()!) ? 1 : 0
}
print(num)