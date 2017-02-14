//: Playground - noun: a place where people can play

import UIKit
import Foundation

public func solution(_ A : inout [Int]) -> Int {
  guard !A.isEmpty else { return 0 }

  let set = Set(A)
  for i in 1...A.count {
    if !set.contains(i) {
      return 0
    }
  }

  return 1
}
