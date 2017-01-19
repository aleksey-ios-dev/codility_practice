//: Playground - noun: a place where people can play

import UIKit


public func solution(_ A : inout [Int]) -> Int {
    guard A.count % 2 != 0 else { return 0 }
    guard !A.isEmpty else { return 0 }
    
    var extraNumber = Set<Int>()
    
    for number in A {
        extraNumber.contains(number) ? extraNumber.remove(number) : extraNumber.update(with: number)
    }
    
    return extraNumber.first!
}



var A = [9, 3, 9, 3, 9, 235, 9, 11, 11, 22, 22 ,34, 34,45,56,45,56,77,77,66,66,55,55,44,44]
solution(&A)
