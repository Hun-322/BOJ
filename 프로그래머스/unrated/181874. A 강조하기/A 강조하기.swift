import Foundation

func solution(_ myString:String) -> String {
    return myString.lowercased().replacingOccurrences(of: "a", with: "A")
}