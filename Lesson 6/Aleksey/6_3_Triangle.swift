//
//  6_3_Triangle.swift
//  
//
//  Created by Aleksey on 09.02.17.
//
//

import Foundation

public func solution(_ A : inout [Int]) -> Int {
  guard A.count >= 3 else { return 0 }

  func isTriangular(p: Int, q: Int, r: Int) -> Bool {
    return (p + q > r) && (q + r > p) && (p + r > q)
  }

  let sorted = A.sorted { $0 > $1 }
  for (index, element) in sorted.enumerated() {
    guard index <= sorted.count - 3 else { break }
    if isTriangular(p: element, q: sorted[index + 1], r: sorted[index + 2]) {
      return 1
    }
  }

  return 0
}
