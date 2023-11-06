let ng = readLine()!.split(separator: " ").map{String($0)}
let (n,g) = (ng[0],ng[1])
var set = Set<String>()

for _ in 0..<Int(n)! {
    set.insert(readLine()!)
}

print(g == "Y" ? set.count : g == "F" ? set.count / 2 : set.count / 3)