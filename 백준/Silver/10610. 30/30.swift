var N = readLine()!.map{Int(String($0))!}.sorted(by: >)

if N.last != 0 || N.reduce(0, +) % 3 != 0 {
    print(-1)
}else {
    print(N.map{String($0)}.joined())
}