import UIKit

public func solution(_ A : inout [Int]) -> Int {
    guard !A.isEmpty else {
        return 1
    }
    
    return Set<Int>(1...A.count + 2).subtracting(Set(A)).min()!
}

var numbers = [2, 3, 4, 5]
solution(&numbers)