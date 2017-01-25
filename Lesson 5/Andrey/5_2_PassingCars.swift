//
//  5_2_PassingCars.swift
//  
//
//  Created by Andrey Sokur on 1/25/17.
//
//

import Foundation


public func solution(_ A : inout [Int]) -> Int {
    var passingCars = 0
    var multiplier = 0
    
    for i in A {
        if i == 0 {
            multiplier += 1
        } else {
            passingCars += multiplier
        }
    }
    
    return passingCars > 1000000000 ? -1 : passingCars
}


var A = [0,1,0,1,1]
solution(&A)
