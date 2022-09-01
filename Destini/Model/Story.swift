import Foundation

struct Story {
    let title: String
    let first: (String, Int)
    let second: (String, Int)
    
    init(t: String, f: (String, Int), s: (String, Int)) {
        title = t
        first = f
        second = s
    }
}
