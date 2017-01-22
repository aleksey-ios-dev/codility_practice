//: Playground - noun: a place where people can play

import UIKit

public func solution(_ A : inout [Int]) -> Int {

    var rightSum = A.reduce(0, +)
    var leftSum = 0
    var smallest = Int.max
    
    for i in 0..<A.count-1 {
        leftSum += A[i]
        rightSum -= A[i]
        
        let difference = abs(leftSum - rightSum)
        
        if difference < smallest {
            smallest = difference
        }
    }
    
    return smallest
}


var A = [2000,500,34,346,546,23,1,345,63,7345,9,345]
solution(&A)

