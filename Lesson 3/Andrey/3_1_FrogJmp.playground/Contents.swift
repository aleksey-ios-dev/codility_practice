//: Playground - noun: a place where people can play

import UIKit

public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
    let i = (Double(Y - X))/Double(D)
    
    return Int(ceil(i))
}


solution(0, 999999999, 2)