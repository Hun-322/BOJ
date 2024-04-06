import Foundation

// 두 사람이 선물을 주고받은 기록이 있다면, 이번 달까지 두 사람 사이에 더 많은 선물을 준 사람이 다음 달에 선물을 하나 받습니다.
// 두 사람이 선물을 주고받은 기록이 하나도 없거나 주고받은 수가 같다면, 선물 지수가 더 큰 사람이 선물 지수가 더 작은 사람에게 선물을 하나 받습니다.
// !선물 지수!는 이번 달까지 자신이 친구들에게 준 선물의 수에서 받은 선물의 수를 뺀 값입니다.
// 물을 가장 많이 받을 친구가 받을 선물의 수
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