var input = readLine()!.split(separator: " ").map{$0.map{Int(String($0))!}}
var A = input[0].reversed() as [Int]
var B = input[1].reversed() as [Int]
var answer = [Int]()

if A.count > B.count {
    for _ in 0...A.count - B.count {
        B.append(0)
    }
    A.append(0)
}else if A.count < B.count{
    for _ in 0...B.count - A.count {
        A.append(0)
    }
    B.append(0)
}else {
    A.append(0)
    B.append(0)
}

for i in 0..<A.count {
    if A[i] + B[i] > 9 {
        A[i+1] += 1
        answer.append(A[i] + B[i] - 10)
    }else {
        answer.append(A[i] + B[i])
    }
}

if answer.last == 0 {
    answer.removeLast()
}

print(answer.reversed().reduce(""){ $0 + String($1)})