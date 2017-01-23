
public func solution(_ A : inout [Int]) -> Int {
  guard !A.isEmpty else { return 0 }

  var leftSum = 0
  var rightSum = A.reduce(0) { sum, element in return sum + element }

  var minDiffremnce = abs(rightSum - leftSum)

  for p in 1..<A.count {
    leftSum += A[p]
    rightSum -= A[p]
    minDiffremnce = min(minDiffremnce, abs(rightSum - leftSum))

  }

  return minDiffremnce
}
