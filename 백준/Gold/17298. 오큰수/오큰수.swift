import Foundation

final class FileIO {
    private let buffer: Data
    private var index: Int = 0
    
    init(fileHandle: FileHandle = FileHandle.standardInput) {
        self.buffer = try! fileHandle.readToEnd()! // 인덱스 범위 넘어가는 것 방지
    }
    
    @inline(__always) private func read() -> UInt8 {
        defer {
            index += 1
        }
        guard index < buffer.count else { return 0 }
        
        return buffer[index]
    }
    
    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true
        
        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        if now == 45 { isPositive.toggle(); now = read() } // 음수 처리
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }
        
        return sum * (isPositive ? 1:-1)
    }
  }

let file = FileIO()
let N = file.readInt()
var input = [Int]()
var answer = Array(repeating: "-1", count: N)
var stack = [Int]()

for _ in 0..<N {
    input.append(file.readInt())
}

for i in 0..<input.count {
    while !stack.isEmpty && input[stack.last!] < input[i] {
        answer[stack.popLast()!] = String(input[i])
    }
    stack.append(i)
}

print(answer.joined(separator: " "))