//
//  7.2 Fish.swift
//  Codility
//
//  Created by Andrey Sokur on 14.05.17.
//  Copyright © 2017 Andrey Sokur. All rights reserved.
//

import Foundation

public func solution(_ A : inout [Int], _ B : inout [Int]) -> Int {
  var fishCount = A.count
  var fishStack = [Int]()
  
  for i in 0..<A.count {
    let weight = A[i]
    let direction = B[i]
    
    if direction == 1 {
      fishStack.append(weight)
      continue
    } else {
      var index = fishStack.endIndex
      while !fishStack.isEmpty {
        fishCount -= 1
        let fishFromStack = fishStack.last!
        if fishFromStack > weight { break }
        else { fishStack.removeLast() }
      }
    }
    
  }
  return fishCount
}
