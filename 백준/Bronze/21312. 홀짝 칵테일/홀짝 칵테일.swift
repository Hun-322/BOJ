let n = readLine()!.split(separator: " ").map{ Int($0)! }
let cnt = n.filter{ $0 % 2 == 1 }

print( cnt.count == 2 || cnt.count == 1 ? cnt.reduce(1, *) : n.reduce(1, *))