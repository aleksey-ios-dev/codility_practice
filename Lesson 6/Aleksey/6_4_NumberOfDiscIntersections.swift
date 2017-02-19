//
//  6_4_NumberOfDiscIntersections.swift
//  
//
//  Created by Oleksii Chernysh on 16.02.17.
//
//

import Foundation

struct Circle {
    
    var centerX: Int
    var radius: Int
    
    var leftEdge: Int {
        return centerX - radius
    }
    
    var rightEdge: Int {
        return centerX + radius
    }
    
}


public func solution(_ A : inout [Int]) -> Int {
    guard A.count > 1 else { return 0 }
    
    var circles = [Circle]()
    
    for (x, radius) in A.enumerated() {
        circles.append(Circle(centerX: x, radius: radius))
    }
    
    let circlesSorted = circles.sorted { lhs, rhs in lhs.leftEdge <= rhs.leftEdge }
    var intersectionsCount = 0
    
    for (i, circle) in circlesSorted.enumerated() {
        for j in i + 1..<circlesSorted.count {
            let innerCircle = circlesSorted[j]
            
            if circle.rightEdge < innerCircle.leftEdge { break }
            intersectionsCount += 1
            if intersectionsCount > 10000000 {
                return -1
            }
        }
    }
    
    return intersectionsCount
}
