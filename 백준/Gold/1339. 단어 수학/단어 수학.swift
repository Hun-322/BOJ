import Foundation

let N = Int(readLine()!)!
var dict = [Character:Double]()

for _ in 1...N {
    var input = Array(readLine()!)
    var i = input.count - 1
    
    for s in input {
        dict[s, default: 0] += pow(10.0, Double(i))
        i -= 1
    }
}

var num = 10
print(dict.sorted(by: {$0.1 > $1.1}).reduce(0){
    num -= 1
    return $0 + Int($1.value) * num
})