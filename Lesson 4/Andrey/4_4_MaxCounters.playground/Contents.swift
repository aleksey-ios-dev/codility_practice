//: Playground - noun: a place where people can play

import UIKit
import Foundation


public func solution(_ N : Int, _ A : inout [Int]) -> [Int] {
    var final = Array(repeating: 0, count: N)
    var currentMax = 0
    var lastMax = 0
    
    for i in A {
        let index = i - 1
        
        if i >= 1 && i <= N {
            final[index] = max(final[index], lastMax) + 1
            currentMax = max(currentMax, final[index])
            
        } else if (i == N + 1){
            lastMax = currentMax
        }
    }
    return final.map { max($0, lastMax) }
}

var array = [3,4,4,6,1,4,4]
solution(5, &array)