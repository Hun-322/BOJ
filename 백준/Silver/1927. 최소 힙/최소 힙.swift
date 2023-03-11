import Foundation

// Comparable -> 크기 비교, 정렬 가능 프로토콜((less than)연산자 직접구현 && 순서 비교 방법(정렬방식)에 대한 구체적 구현)
struct MinHeap<T:Comparable> {
    var heap: [T] = []
    var isEmpty: Bool {
        return heap.count <= 1 ? true : false
    }
    
    init() {}
    init(_ element:T) {
        heap.append(element) // 0번 index채우기용
        heap.append(element) // 실제 Root Node
    }
    
    // 새로운 요소를 heap에 추가
    mutating func insert(_ element:T) {
        // heap 배열이 비어있는 경우, 루트 노드 추가
        if heap.isEmpty {
            heap.append(element)
            heap.append(element)
            return
        }
        heap.append(element)
        
        // heap 배열이 비어있지 않으면
        // 새로 추가된 요소가 부모 노드보다 작은 경우, 부모 노드와 위치를 바꾸어 올바른 위치에 추가
        func isMoveUp(_ insertIndex:Int) -> Bool {
            if insertIndex <= 1 { // Root node일 때,
                return false
            }
            let parentIndex = insertIndex / 2
            return heap[insertIndex] < heap[parentIndex] ? true : false
        }
        
        var insertIndex = heap.count - 1
        while isMoveUp(insertIndex) {
            let paentIndex = insertIndex / 2
            heap.swapAt(insertIndex, paentIndex)
            insertIndex = paentIndex
        }
    }
    
    enum moveDownStatus { case left, right, none }
    // heap에서 가장 작은 값을 반환, 해당 요소 제거
    mutating func pop() -> T? {
        // heap 배열의 요소 개수가 1 이하인 경우, nil을 반환
        if heap.count <= 1 {
            return nil
        }
        
        // 그렇지 않은 경우, 가장 작은 값은 루트 노드에 위치하므로, heap[1] 값을 변수에 저장한 후, heap의 마지막 요소와 위치를 바꾸어 제거
        let returnData = heap[1]
        heap.swapAt(1, heap.count - 1)
        heap.removeLast()
        
        // 제거된 요소의 위치에서, 왼쪽 자식 노드와 오른쪽 자식 노드 중 작은 값을 가진 노드와 위치를 바꾸어 내려가는 작업을 수행
        func moveDown(_ poppedIndex: Int) -> moveDownStatus {
            let leftChildIndex = poppedIndex * 2
            let rightChildIndex = leftChildIndex + 1
            
            // case1. 모든(왼쪽) 자식 노드가 없는 경우(완전이진트리는 왼쪽부터 채워지므로)
            if leftChildIndex >= heap.count {
                return .none
            }
            
            // case2. 왼쪽 자식 노드만 있는 경우
            if rightChildIndex >= heap.count {
                return heap[leftChildIndex] < heap[poppedIndex] ? .left : .none
            }
            
            // case3. 왼쪽&오른쪽 자식 노드 모두 있는 경우
            // case3-1. 자식들이 자신보다 모두 큰 경우(자신이 제일 작은 경우)
            if (heap[leftChildIndex] > heap[poppedIndex]) && (heap[rightChildIndex] > heap[poppedIndex]) {
                return .none
            }
            
            // case3-2. 자식들이 자신보다 모두 작은 경우(왼쪽과 오른쪽 자식 중, 더 작은 자식을 선별)
            if (heap[leftChildIndex] < heap[poppedIndex]) && (heap[rightChildIndex] < heap[poppedIndex]) {
                return heap[leftChildIndex] < heap[rightChildIndex] ? .left : .right
            }
            
            // case3-3. 왼쪽과 오른쪽 자식 중, 한 자식만 자신보다 작은 경우
            if (heap[leftChildIndex] < heap[poppedIndex]) || (heap[rightChildIndex] < heap[poppedIndex]) {
                return heap[leftChildIndex] < heap[rightChildIndex] ? .left : .right
            }
            
            return .none
        }
        var poppedIndex = 1
        
        // 제거된 요소의 위치에서, 왼쪽 자식 노드와 오른쪽 자식 노드 중 작은 값을 가진 노드와 위치를 바꾸어 내려가는 작업을 수행
        while true {
            switch moveDown(poppedIndex) {
            case .none:
                return returnData
            case .left:
                let leftChildIndex = poppedIndex * 2
                heap.swapAt(poppedIndex, leftChildIndex)
                poppedIndex = leftChildIndex
            case .right:
                let rightChildIndex = (poppedIndex * 2) + 1
                heap.swapAt(poppedIndex, rightChildIndex)
                poppedIndex = rightChildIndex
            }
        }
    }
}

var minHeap = MinHeap<Int>()

for _ in 1...Int(readLine()!)! {
    let x = Int(readLine()!)!
    
    // x가 0이라면 배열에서 가장 작은 값을 출력, 그 값을 배열에서 제거
    if x == 0 {
        print(minHeap.pop() ?? 0)
    } else {
        minHeap.insert(x)
    }
}
