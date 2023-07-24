let n = Int(readLine()!)!
var log = Set<String>()

for _ in 1...n {
    let input = readLine()!.split{$0 == " "}.map{String($0)}
    
    switch input[1] {
    case "enter":
        log.insert(input[0])
    default:
        log.remove(input[0])
    }
}

log.sorted(by: >).forEach{ print($0) }