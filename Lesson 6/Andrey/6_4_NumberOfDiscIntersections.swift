//
//  6_4_NumberOfDiscIntersections.swift
//  
//
//  Created by Andrey Sokur on 16.02.17.
//
//

import Foundation

public func solution(_ A : inout [Int]) -> Int {
    
    var endPoints = [(circleEdge:Int, circleState:Int)]()
    
    for i in 0..<A.count {
        endPoints += [(circleEdge: i - A[i], circleState: 1), (circleEdge: i + A[i], circleState: -1)]
    }
    endPoints.sort {
        if $0.circleEdge == $1.circleEdge {
            return $0.circleState > $1.circleState
        }
        return $0.circleEdge < $1.circleEdge
    }
    
    var intersections = 0, activeCircles = 0
    
    for endPoint in endPoints {
        intersections += activeCircles * (endPoint.circleState > 0).hashValue
        activeCircles += endPoint.circleState
        
        if intersections > 10000000 {
            return -1
        }
    }
    
    return intersections
}


var A = [1, 5, 2, 1, 4, 0]
var A1 = [1, 1, 1]

solution(&A)
solution(&A1)
