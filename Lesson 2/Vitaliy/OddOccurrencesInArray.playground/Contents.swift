public func solution(_ A : inout [Int]) -> Int {
    var sortedNumbers = A.sorted()
    var foreverAlone = 0
    
    func removeCouples() {
        if sortedNumbers.count > 1, sortedNumbers[0] == sortedNumbers[1] {
            sortedNumbers.removeFirst(2)
            !sortedNumbers.isEmpty ? removeCouples() : print("Sorry, all elements are paired!")
        } else {
            foreverAlone = sortedNumbers[0]
        }
    }
    
    removeCouples()
    return foreverAlone
}


var numbers = [10, 5, 3, 10, 3]
solution(&numbers)