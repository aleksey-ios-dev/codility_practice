//: Playground - noun: a place where people can play

import UIKit

public func solution(_ N : Int) -> Int {
  var zeroesCount: Int?
  var maxZeroesCount = 0
  var number = N
  
  while abs(number) >= 1 {
    defer { number = number / 2 }
    
    let remainder = number % 2
    
    if remainder == 0 && zeroesCount != nil {
      zeroesCount! += 1
    } else if remainder == 1 {
      zeroesCount = zeroesCount ?? 0
      maxZeroesCount = max(maxZeroesCount, zeroesCount!)
      zeroesCount = 0
    }
  }
  
  return maxZeroesCount
}
