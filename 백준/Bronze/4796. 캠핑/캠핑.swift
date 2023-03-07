var num = 1

while true {
    var N = readLine()!.split(separator: " ").map{Int($0)!}
    
    if N == [0,0,0] { break }
    
    print("Case \(num):",(N[2] / N[1]) * N[0] + min(N[2] % N[1], N[0]))
    num += 1
}
