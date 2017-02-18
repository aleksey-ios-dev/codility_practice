import UIKit

//90% из-за performance!

public func solution(_ X : Int, _ A : inout [Int]) -> Int {
  guard !A.isEmpty else { return -1 }
  var leafMap = [Int: Int]() // [position: minTime]
  for (time, leafPosition) in A.enumerated() {
    if leafPosition > X || leafPosition < 1 {
      continue
    }
    if (leafMap[leafPosition] == nil) {
      leafMap[leafPosition] = time
    } else {
      leafMap[leafPosition] = min(leafMap[leafPosition]!, time)
    }
  }

  let keySet = Set(leafMap.keys)
  for i in 1...X {
    if !keySet.contains(i) {
      return -1
    }
  }


  return leafMap.values.max()!
}
