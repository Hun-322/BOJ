var set = Set<String>()

for _ in 1...Int(readLine()!)! {
    set.insert(readLine()!)
}

var arr = set.sorted(by:
            {
    if $0.count == $1.count {
        return $0 < $1
    }else{
        return $0.count < $1.count
    }
})

for i in arr {
    print(i)
}