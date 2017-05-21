//
//  7.2 Fish.swift
//  Codility
//
//  Created by Andrey Sokur on 14.05.17.
//  Copyright © 2017 Andrey Sokur. All rights reserved.
//

import Foundation

public func solution(_ H : inout [Int]) -> Int {
  guard !H.isEmpty else { return 0 }
  
  var stack = [H.first!]
  var blocksCount = 1
  for height in H {
    
    if height == stack.last ?? 0 {
      continue
    }
      
    else if height > stack.last ?? 0 {
      stack.append(height)
      blocksCount += 1
      continue
    }
      
    else if height < stack.last ?? 0 {
      var shouldIncrement = true
      
      while height <= stack.last ?? 0 {
        stack.removeLast()
        if height == stack.last {
          shouldIncrement = false
          break
        }
        continue
      }
      
      stack.append(height)
      if shouldIncrement {
        blocksCount += 1
      }
    }
    
  }
  
  return blocksCount
}
