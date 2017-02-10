import UIKit

public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
    guard Y > X else {
        print("Wrong parameters!")
        return 0
    }
    
    var jumps = 0
    var calculatingDistance = 0
    let distance = Y - X
    
    jumps = distance / D
    calculatingDistance = (jumps * D) + X
    
    if Y > calculatingDistance {
        jumps += 1
    }
    
    return jumps
}

solution(10, 85, 30)



