//: Playground - noun: a place where people can play

import UIKit

public func solution(_ X : Int, _ A : inout [Int]) -> Int {
    
    var a = [Int:Bool]()
    
    for i in A {
        if i <= X {
            a[i] = true
        }
        
        if a.count == X {
            return A.index(of: i)!
        }
    }
    
    return -1
}


var A = [1,3,1,4,2,3,5,4]

solution(5, &A)