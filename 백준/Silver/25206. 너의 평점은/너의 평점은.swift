import Foundation

var sum:Float = 0
var total:Float = 0

for _ in 1...20 {
    var input = readLine()!.split(separator: " ")
    
    if input[2] != "P"{
        sum += Float(input[1])!
    }
    
    switch input[2] {
    case "A+":
        total += 4.5 * Float(input[1])!
    case "A0":
        total += 4.0 * Float(input[1])!
    case "B+":
        total += 3.5 * Float(input[1])!
    case "B0":
        total += 3.0 * Float(input[1])!
    case "C+":
        total += 2.5 * Float(input[1])!
    case "C0":
        total += 2 * Float(input[1])!
    case "D+":
        total += 1.5 * Float(input[1])!
    case "D0":
        total += 1.0 * Float(input[1])!
    case "F":
        total += 0 * Float(input[1])!
    default:
        continue
    }
}

print(sum == 0 ? 0 : total/sum)