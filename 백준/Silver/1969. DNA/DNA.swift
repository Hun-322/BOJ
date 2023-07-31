let input = readLine()!.split(separator: " ").map{ Int($0)! }
var dna = [[String]]()
var answer = [String]()
var num = 0

for _ in 1...input[0] {
    dna.append(readLine()!.map{ String($0) })
}

for i in 0..<input[1] {
    var hammingDistanceValue = ["A": 0, "C": 0, "G": 0, "T": 0]
    var maxKeyValue = "A"

    for j in 0..<input[0] {
        let data = dna[j][i]

        hammingDistanceValue[data]! += 1
    }

    for key in ["C", "G", "T"] {
        if hammingDistanceValue[key]! > hammingDistanceValue[maxKeyValue]! {
            maxKeyValue = key
        } else if hammingDistanceValue[key]! == hammingDistanceValue[maxKeyValue]! {
            if key < maxKeyValue {
                maxKeyValue = key
            }
        }
    }

    answer.append(maxKeyValue)
}

for i in 0..<input[0] {
    for j in 0..<input[1] {
        if answer[j] != dna[i][j] {
            num += 1
        }
    }
}

print("\(answer.joined())\n\(num)")