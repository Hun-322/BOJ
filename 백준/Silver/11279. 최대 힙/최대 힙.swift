struct MaxHeap<T:Comparable> {
    var heap: [T] = []
    var isEmpty: Bool {
        return heap.count <= 1 ? true : false
    }

    init() {}
    init(_ element:T) {
        heap.append(element)
        heap.append(element)
    }

    mutating func insert(_ element:T) {
        if heap.isEmpty {
            heap.append(element)
            heap.append(element)
            return
        }
        heap.append(element)

        func isMoveUp(_ insertIndex:Int) -> Bool {
            if insertIndex <= 1 {
                return false
            }
            let parentIndex = insertIndex / 2
            return heap[insertIndex] > heap[parentIndex] ? true : false
        }

        var insertIndex = heap.count - 1
        while isMoveUp(insertIndex) {
            let paentIndex = insertIndex / 2
            heap.swapAt(insertIndex, paentIndex)
            insertIndex = paentIndex
        }
    }

    enum moveDownStatus { case left, right, none }

    mutating func pop() -> T? {
        if heap.count <= 1 {
            return nil
        }

        let returnData = heap[1]
        heap.swapAt(1, heap.count - 1)
        heap.removeLast()

        func moveDown(_ poppedIndex: Int) -> moveDownStatus {
            let leftChildIndex = poppedIndex * 2
            let rightChildIndex = leftChildIndex + 1

            if leftChildIndex >= heap.count {
                return .none
            }

            if rightChildIndex >= heap.count {
                return heap[leftChildIndex] > heap[poppedIndex] ? .left : .none
            }

            if (heap[leftChildIndex] < heap[poppedIndex]) && (heap[rightChildIndex] < heap[poppedIndex]) {
                return .none
            }

            if (heap[leftChildIndex] > heap[poppedIndex]) && (heap[rightChildIndex] > heap[poppedIndex]) {
                return heap[leftChildIndex] > heap[rightChildIndex] ? .left : .right
            }

            if (heap[leftChildIndex] > heap[poppedIndex]) || (heap[rightChildIndex] > heap[poppedIndex]) {
                return heap[leftChildIndex] > heap[rightChildIndex] ? .left : .right
            }

            return .none
        }

        var poppedIndex = 1
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


var maxHeap = MaxHeap<Int>()

for _ in 1...Int(readLine()!)! {
    let x = Int(readLine()!)!
    
    if x == 0 {
        print(maxHeap.pop() ?? 0)
    } else {
        maxHeap.insert(x)
    }
}
