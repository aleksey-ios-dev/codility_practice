//: Playground - noun: a place where people can play

import UIKit

public func solution(_ A : inout [Int]) -> Int {
    
    var arr = [Int]()
    arr += 1...A.count + 1

    return arr.reduce(0, +) - A.reduce(0, +)
}


var A = [1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18] // 10

solution(&A)
