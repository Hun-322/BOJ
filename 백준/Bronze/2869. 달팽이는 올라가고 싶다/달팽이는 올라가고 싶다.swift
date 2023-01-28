import Foundation
let arr = readLine()!.split(separator: " ").map{Double($0)!}
print(Int(ceil((arr[2] - arr[1]) / (arr[0] - arr[1]))))