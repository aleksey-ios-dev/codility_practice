import UIKit

public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
  guard A.count > 1 && K > 0 else { return A }
  
  let times = K - (K / A.count) * A.count
  
  for _ in 0..<times {
    A.insert(A.removeLast(), at: 0)
  }
  
  return A
}

var arr = [3, 8, 9, 7, 6]
let sol = solution(&arr, 2)
