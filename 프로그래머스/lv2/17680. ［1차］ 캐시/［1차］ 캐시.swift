func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    let cities = cities.map{$0.lowercased()}
    var queue = [String]()
    var sum = 0
    
    for city in cities {
        if queue.contains(city) {
            queue.remove(at: queue.firstIndex(of: city)!)
            queue.insert(city, at: 0)
            sum += 1
        } else {
            queue.insert(city, at: 0)
            sum += 5
            
            if queue.count > cacheSize {
                queue.removeLast()
            }
        }
    }
    return sum
}