import UIKit

func solution(_ N : Int, _ A : inout [Int]) -> [Int] {
    var counters = Array(repeating: 0, count: N)
    
    var currentMax = 0
    var didUpdateMax = false
    
    A.forEach {
        if $0 >= 1 && $0 <= N {
            let newValue = counters[$0 - 1] + 1
            counters[$0 - 1] = newValue
            if newValue > currentMax {
                currentMax = newValue
                didUpdateMax = true
            }
        } else if $0 == N + 1 && didUpdateMax {
            counters = Array(repeating: currentMax, count: N)
            didUpdateMax = false
        }
    }
    return counters
}

var array = [3,4,4,6,1,4,4]
solution(5, &array)
