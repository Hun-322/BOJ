var arr = [[String]]()

for _ in 1...Int(readLine()!)!{
    arr.append(readLine()!.split(separator: " ").map{String($0)})
}

for s in arr.sorted(by: { Int($0[0])! < Int($1[0])!}) {
    print(s.joined(separator: " "))
}