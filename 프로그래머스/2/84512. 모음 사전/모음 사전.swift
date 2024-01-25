import Foundation

func solution(_ word:String) -> Int {
    var vowel = ["A", "E", "I", "O", "U"]
    var arr = [String]()
    var answer = 0
    
    for i in 0..<5 {
        arr.append(vowel[i])
    }
    
    for i in 0..<5 {
        for j in 0..<5 {
            arr.append(vowel[i] + vowel[j])
        }
    }

    for i in 0..<5 {
        for j in 0..<5 {
            for k in 0..<5 {
                arr.append(vowel[i] + vowel[j] + vowel[k])
            }
        }
    }
    
    for i in 0..<5 {
        for j in 0..<5 {
            for k in 0..<5 {
                for l in 0..<5 {
                    arr.append(vowel[i] + vowel[j] + vowel[k] + vowel[l])
                }
            }
        }
    }
    
    for i in 0..<5 {
        for j in 0..<5 {
            for k in 0..<5 {
                for l in 0..<5 {
                    for m in 0..<5 {
                        arr.append(vowel[i] + vowel[j] + vowel[k] + vowel[l] + vowel[m])
                    }
                }
            }
        }
    }
    
    return arr.sorted().firstIndex { $0 == word }! + 1
}