//
//  7.2 Fish.swift
//  Codility
//
//  Created by Andrey Sokur on 14.05.17.
//  Copyright © 2017 Andrey Sokur. All rights reserved.
//

import Foundation

public func solution(_ A : inout [Int], _ B : inout [Int]) -> Int {
    var count = A.count
    var stack = [Int]()
    var left = 0
    
    for i in 0..<A.count {
        if B[i] == 1 {
            stack.append(A[i])
        } else {
            while stack.count > 0 {
                if A[i] > stack.last! {
                    stack.removeLast()
                } else {
                    break
                }
            }
            
            if stack.isEmpty {
                left += 1
            }
        }
    }
    return stack.count + left
}

var A = [4, 3, 2, 1, 5]
var B = [0, 1, 0, 0, 0]


solution(&A, &B)
