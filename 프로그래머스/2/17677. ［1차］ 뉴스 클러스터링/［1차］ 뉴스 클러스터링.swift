func solution(_ str1:String, _ str2:String) -> Int {
    let str1 = str1.uppercased.map{ String($0) }
    let str2 = str2.uppercased.map{ String($0) }
    
    func filterSpecialChar(_ strArray: [String]) -> [String] {
        var arr = [String]()
        var idx = 0
        
        while strArray.count-1 > idx {
            let firstValue = Int(UnicodeScalar(strArray[idx])!.value)
        
            if firstValue > 64 && firstValue < 91 {
                let secondValue = Int(UnicodeScalar(strArray[idx+1])!.value)
            
                if secondValue > 64 && secondValue < 91 {
                    arr.append(strArray[idx] + strArray[idx+1])
                }
            } 
            idx += 1
        }
        return arr
    }
    
    let arr1 = filterSpecialChar(str1)
    let arr2 = filterSpecialChar(str2)
    
    if arr1.count == 0 && arr2.count == 0 { return 65536 }

    let filterArr1 = Set(arr1.filter{ arr2.contains($0) })
    var intersectionNum = 0
    
    for i in filterArr1 {
        let num1 = arr1.filter{ $0 == i }.count
        let num2 = arr2.filter{ $0 == i }.count
        
        intersectionNum += min(num1, num2)
    }
    
    let unionNum = arr1.count + arr2.count - intersectionNum
    
    return Int(65536 * Double(intersectionNum) / Double(unionNum))
}