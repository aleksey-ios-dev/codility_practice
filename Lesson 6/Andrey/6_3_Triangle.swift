//
//  6_3_Triangle.swift
//  
//
//  Created by Andrey Sokur on 09.02.17.
//
//

import Foundation

public func solution(_ A : inout [Int]) -> Int {
    
    guard A.count > 3 else { return 0 }

    A.sort()
    
    for i in 0..<A.count - 2 {
        if A[i] + A[i + 1] > A[i + 2] {
            return 1
        }
    }
    
    return 0
}


var A = [1, -2, 3, 3, 4, 4, 33, -33, 23, 12, -13]

solution(&A)
