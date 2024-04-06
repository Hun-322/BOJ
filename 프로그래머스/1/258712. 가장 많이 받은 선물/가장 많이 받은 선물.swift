import Foundation

func solution(_ friends:[String], _ gifts:[String]) -> Int {
    var friendsStatus = [[Int]](repeating: [Int](repeating: 0, count: friends.count), count: friends.count)
    var arr = [[Int]]()
    var nextGift = [Int]()
    
    for i in 0..<friends.count {
        arr.append([0, 0])
    }
    
    for i in 0..<gifts.count {
        let a = gifts[i].split{ $0 == " "}.map{ String($0) }
        let aIdx = friends.firstIndex(of: a[0])!
        let bIdx = friends.firstIndex(of: a[1])!
        
        arr[aIdx][0] += 1
        arr[bIdx][1] += 1
        friendsStatus[aIdx][bIdx] += 1
    }
    
    for i in 0..<arr.count {
        arr[i].append(arr[i][0] - arr[i][1])
    }
    
    for i in 0..<friends.count {
        var giftCount = 0
        
        for j in 0..<friends.count where i != j {
            if friendsStatus[i][j] > friendsStatus[j][i] || (friendsStatus[i][j] == friendsStatus[j][i] && arr[i][2] > arr[j][2]) {
                giftCount += 1
            }
        }
        
        nextGift.append(giftCount)
    }
    
    return nextGift.max()!
}