//
//  6_2_MaxProductOfThree.swift
//  
//
//  Created by Aleksey on 09.02.17.
//
//

import Foundation

public func solution(_ A : inout [Int]) -> Int {
  guard A.count >= 3 else { return 0 }

  let sortedArray = A.sorted { $1 < $0 }

  if sortedArray.last! >= 0 {
    return sortedArray.prefix(upTo: 3).reduce(1) { $1 * $0 }
  }

  if sortedArray.first! <= 0 {
    return sortedArray.prefix(3).reduce(1) { $1 * $0 }
  }

  let secondSmallest = sortedArray[sortedArray.count - 2]
  let smallest = sortedArray[sortedArray.count - 1]

  let secondBiggest = sortedArray[1]
  let thirdBiggest = sortedArray[2]

  let multiplier = max(secondSmallest * smallest, secondBiggest * thirdBiggest)
  let biggest = sortedArray.first!

  return multiplier * biggest
}
