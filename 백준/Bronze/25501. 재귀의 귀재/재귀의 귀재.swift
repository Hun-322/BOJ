var cnt = 0

for _ in 0..<Int(readLine()!)! {
    print("\(isPalindrome(Array(readLine()!))) \(cnt)")
}

func recursion(_ s: [Character], _ l: Int, _ r: Int) -> Int{
    cnt += 1
    if (l >= r) {return 1}
    else if(s[l] != s[r]) {return 0}
    else {return recursion(s, l+1, r-1)}
}

func isPalindrome(_ s: [Character]) -> Int{
    cnt = 0
    return recursion(s, 0, s.count - 1)
}