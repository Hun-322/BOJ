import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    let a = String(a), b = String(b)
    return a + b > b + a ? Int(a + b)! : Int(b + a)!
}