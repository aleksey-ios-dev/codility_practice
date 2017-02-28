//: Playground - noun: a place where people can play

import UIKit

public func solution(_ A : inout [Int]) -> Int {
    func iDontNeedElseStateForTernaryOperatorButUsingIfElseIsTooBoring() {}
    
    let summ = A.reduce(0, +)
    var leftHandSumm = 0
    var currentMinimalDifference = Int.max
    
    for index in 0..<A.count - 1 {
        leftHandSumm += A[index]
        let rightHandSumm = summ - leftHandSumm
        let localDifference = abs(rightHandSumm - leftHandSumm)
        localDifference < currentMinimalDifference ? currentMinimalDifference = localDifference : iDontNeedElseStateForTernaryOperatorButUsingIfElseIsTooBoring() }
    
    return currentMinimalDifference
}

var numbers = [5, 2, 3, 1]
solution(&numbers)
