/* public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
    
    guard K <= 100, K >= 0, !A.isEmpty, A.min()! >= -1000, A.max()! <= 1000, A.count - 1 <= 100 else {
        print("Wrong entry parameters. Try another numbers.")
        return []
    }
    
    var lastElementForCurrentCycle = 0
    
    for _ in 0..<K {
        lastElementForCurrentCycle = A.remove(at: A.count - 1)
        A.insert(lastElementForCurrentCycle, at: A.startIndex)
    }
    
    return A
}*/

var numbers = [-4, 100, 50, 2]
solution(&numbers, 2)



