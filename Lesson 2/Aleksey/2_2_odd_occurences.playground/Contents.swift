import UIKit

public func solution(_ A : inout [Int]) -> Int {
  guard !A.isEmpty else { return 0 }
  var dictionary = [Int: Int]()
  
  A.forEach {
    if dictionary[$0] == nil {
      dictionary[$0] = 1
    } else {
      dictionary[$0]! += 1
    }
    if dictionary[$0] == 2 {
      dictionary[$0] = 0
    }
  }
  
  for (number, count) in dictionary {
    if count == 1 {
      return number
    }
  }
  
  return 0
}

var arr = [-1, -1, -1]
let sol = solution(&arr)
