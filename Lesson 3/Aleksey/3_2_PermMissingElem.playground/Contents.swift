
public func solution(_ A : inout [Int]) -> Int {
  guard !A.isEmpty else { return 1 }

  let minimum = 1

  let objectsSet = Set(A)
  let fullSet = Set(minimum..<minimum + A.count + 1)

  let extraElementSet = fullSet.subtracting(objectsSet)
  if let extraElement = extraElementSet.first {
    return extraElement
  }

  return 1
}

var arr = [2, 3, 4]
let res = solution(&arr)
