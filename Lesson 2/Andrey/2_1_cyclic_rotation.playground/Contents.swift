//: Playground - noun: a place where people can play

import UIKit

public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
    if A.count > 1 {
        for _ in 0 ..< K {
            A.insert(A.removeLast(), at: A.startIndex)
        }
    }
    
    return A
}