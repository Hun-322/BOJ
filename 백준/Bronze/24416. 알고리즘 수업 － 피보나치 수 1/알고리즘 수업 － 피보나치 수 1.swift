let n = Int(readLine()!)!

print(fib(n), fibonacci(n, 0).1)

func fib(_ n: Int) -> Int {
    if n == 1 || n == 2 {
        return 1
    }else {
        return fib(n - 1) + fib(n - 2)
    }
}


func fibonacci(_ n: Int, _ count: Int) -> (Int, Int) {
    var arr = [Int](repeating: 1, count: 2)
    var count = count
    
    for i in 2..<n {
        count += 1
        arr.append(arr[i - 1] + arr[i - 2])
    }
    return (arr[n - 1], count)
}