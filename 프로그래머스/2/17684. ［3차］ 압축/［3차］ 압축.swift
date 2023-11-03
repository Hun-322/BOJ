func solution(_ msg:String) -> [Int] {
    var dict = ["A":1, "B":2, "C":3, "D":4, "E":5, "F":6, "G":7, "H":8, "I":9, "J":10, "K":11, "L":12, "M":13, "N":14, "O":15, "P":16, "Q":17, "R": 18, "S": 19, "T": 20, "U": 21, "V": 22, "W": 23, "X": 24, "Y":25, "Z":26]
    let msg = msg.map{String($0)}
    var answer = [Int]()
    var num = 0
    
    while num < msg.count {
        var temp = msg[num]
        
        while true {
            if dict[temp] == nil {
                dict[temp] = dict.count + 1
                temp.removeLast()
                answer.append(dict[temp]!)
                break
            } else {
                num += 1
                
                if num == msg.count {
                    answer.append(dict[temp]!)
                    break
                }
                
                temp.append(msg[num])
            }
        }
    }
    return answer
}
