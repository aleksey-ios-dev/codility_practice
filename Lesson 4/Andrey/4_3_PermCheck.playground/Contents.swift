//: Playground - noun: a place where people can play

import UIKit
import Foundation


public func solution(_ A : inout [Int]) -> Int {
    
    var set = Set<Int>()
    
    for i in A {
        if i > A.count {
            return 0
        } else {
            set.insert(i)
        }
    }
    
    if set.count == A.count {
        return 1
    } else {
        return 0
    }
}


var A1 = [2,1,3,4]
var A2 = [1,3,4]

solution(&A1)
solution(&A2)
