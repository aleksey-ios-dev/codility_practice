import UIKit
import Foundation

public func solution(_ A : inout [Int]) -> Int {
  guard !A.isEmpty else { return 1 }

  let set = Set(A)
  for i in 1...Int.max {
    if !set.contains(i) {
      return i
    }
  }

  return 1
}
