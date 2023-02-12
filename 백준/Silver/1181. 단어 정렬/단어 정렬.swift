var set = Set<String>()
var arr = [String]()

for _ in 1...Int(readLine()!)! {
    set.insert(readLine()!)
}

arr = set.sorted(by: { $0.count == $1.count ? $0 < $1 : $0.count < $1.count} )

for i in arr {
    print(i)
}