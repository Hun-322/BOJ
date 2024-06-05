import Foundation

func solution(_ dirs:String) -> Int {
    var coordinate = [0, 0]
    var temp = [0, 0]
    var arr: Set<String> = ["0, 0"]
    
    for c in dirs {
        switch c {
            case "U":
            temp = [0, 1]
            case "D":
            temp = [0, -1]
            case "R":
            temp = [1, 0]
            case "L":
            temp = [-1, 0]
            default: 
            break
        }
        
        let newCoordinate = [coordinate[0] + temp[0], coordinate[1] + temp[1]]
        
        if (-5...5).contains(newCoordinate[0]) && (-5...5).contains(newCoordinate[1]) {
            let path = "\(coordinate[0]),\(coordinate[1])-\(newCoordinate[0]),\(newCoordinate[1])"
            let reversePath = "\(newCoordinate[0]),\(newCoordinate[1])-\(coordinate[0]),\(coordinate[1])"
            
            arr.insert(path)
            arr.insert(reversePath)
            
            coordinate = newCoordinate
        }
    }
    
    return arr.count / 2
}