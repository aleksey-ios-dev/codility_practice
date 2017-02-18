//
//  5_2_PassingCars.swift
//  
//
//  Created by Aleksey on 1/25/17.
//
//

import Foundation

public func solution(_ A : inout [Int]) -> Int {

  func  countOfPairs(in array: [Int]) -> Int {
    guard !array.isEmpty else { return 0 }

    var onesCount = array.filter { $0 == 1 }.count

    guard onesCount != 0 else { return 0 }
    var pairsCount = 0

    for element in array {
      guard element == 0 else {
        onesCount -= 1
        continue
      }
      pairsCount += onesCount
    }

    return pairsCount
  }

  let result = countOfPairs(in: A)
    
  return result <= 1000000000 ? result : -1
}
