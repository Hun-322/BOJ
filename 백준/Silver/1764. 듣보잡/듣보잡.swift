let input = readLine()!.split{ $0 == " " }.map{ Int($0)! }
let N = input[0], M = input[1]
var see = Set<String>()
var hear = Set<String>()

for i in 1...N+M {
    i < N+1 ? see.insert(readLine()!) : hear.insert(readLine()!)
}

let answer = Array(see.intersection(hear)).sorted()

print(answer.count)
answer.forEach{ print($0) }