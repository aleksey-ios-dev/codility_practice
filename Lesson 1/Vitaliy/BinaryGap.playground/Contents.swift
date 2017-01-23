import UIKit

public func solution(_ N : Int) -> Int {
    var currentGap = 0
    var binaryString = String(N, radix: 2)
    
    func recursiveSolution() {
        var internalGap = 0
        var cutBinaryString = ""
        
        if binaryString.characters.first == "1" {
            binaryString.remove(at: binaryString.startIndex)
        }
        
        for character in binaryString.characters {
            if character == "0" {
                cutBinaryString += "0"
                internalGap += 1
            } else {
                if internalGap > currentGap {
                    currentGap = internalGap
                }
                cutBinaryString += "1"
                cutBinaryString.insert("1", at: cutBinaryString.startIndex)
                let index = cutBinaryString.index(binaryString.startIndex, offsetBy: cutBinaryString.characters.count - 2)
                binaryString.removeSubrange(cutBinaryString.startIndex...index)
                recursiveSolution()
                break
            }
        }
    }
    recursiveSolution()
    return currentGap
}

solution(10001)
