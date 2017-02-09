//
//  6_1_Distinct.swift
//  
//
//  Created by Andrey Sokur on 09.02.17.
//
//

import Foundation

public func solution(_ A : inout [Int]) -> Int {
    
    return Set(A).count
}


var A = [1, 2, 3, 3, 4, 4, 33, -12, 23, 12, -23]

solution(&A)
