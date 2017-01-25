//
//  5_1_CountDiv.swift
//  
//
//  Created by Andrey Sokur on 1/25/17.
//
//

import Foundation


public func solution(_ A : Int, _ B : Int, _ K : Int) -> Int {
    
    if A == 0 {
        return B / K + 1
    } else {
        return B / K - (A - 1) / K
    }
}

solution(0, Int.max, 46753346477)

