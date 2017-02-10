//
//  6_2_ MaxProductOfThree .swift
//  
//
//  Created by Andrey Sokur on 09.02.17.
//
//

import Foundation


public func solution(_ A : inout [Int]) -> Int {
    A.sort()
    let count = A.count
    
    return max(A[count - 1] * A[count - 2] * A[count - 3],
               A[0] * A[1] * A[count - 1])
}


var A = [1, -2, 3, 3, 4, 4, 33, -33, 23, 12, -13]

solution(&A)
