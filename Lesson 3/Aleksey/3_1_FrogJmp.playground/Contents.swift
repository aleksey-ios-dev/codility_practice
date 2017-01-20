import UIKit

public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
  var result = (Y - X) / D
  if (Y - X) % D != 0 { result += 1 }
  
  return result
}

solution(10, 20, 3)