import UIKit

public func solution(_ A : inout [Int]) -> Int {
    A.sort()
    guard !A.isEmpty, A.first == 1 else { return 1 }
    var suspected = A.first
    A.append(A.max()! + 1)
    
        for value in 1..<A.count {
            if A[value] - suspected! == 1 {
                suspected = A[value]
            } else {
                suspected = (A[value] + suspected!) / 2
                break
            }
        }

    return suspected!
}

var numbers = [1, 2, 3, 4, 6]
solution(&numbers)
