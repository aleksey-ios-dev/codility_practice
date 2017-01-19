//: Playground - noun: a place where people can play

import UIKit

let separator: Character = "1"

public func binaryGap(_ number: Int) -> Int {
    let binaryString = String(number, radix: 2)
    var elements = binaryString.characters.split(separator: separator).map(String.init)
    
    if binaryString.characters.last != separator {
        elements.removeLast()
    }
    
    if elements.count == 0 {
        return 0
    } else {
        return (elements.max{ i, j in
            i.characters.count < j.characters.count
            }?.characters.count)!
    }
}


binaryGap(94)
binaryGap(4587)
