import Foundation

func solution(_ record:[String]) -> [String] {
    var userInfo = Dictionary<String,String>()
    var answer = [String]()
    var result = [String]()
    
    for msg in record {
        let msgArray = msg.split{$0 == " "}.map{String($0)}
        let command = msgArray[0], userId = msgArray[1]
        
        switch command {
            case "Enter": 
            let name = msgArray[2]
            
            userInfo.updateValue(name, forKey: userId)
            answer.append("\(userId)님이 들어왔습니다.")
            case "Change": 
            let name = msgArray[2]
            
            userInfo.updateValue(name, forKey: userId)
            case "Leave": 
                answer.append("\(userId)님이 나갔습니다.")
            default: 
                print("error")
        }
    }
    
    for i in answer {
        let id = i.split{$0 == "님"}.map{String($0)}[0]

        result.append(i.replacingOccurrences(of: id, with: userInfo[id]!))
    }
    
    return result
}