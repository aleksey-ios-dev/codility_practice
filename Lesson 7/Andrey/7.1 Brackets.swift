//
//  7.1 Brackets.swift
//  Codility
//
//  Created by Andrey Sokur on 13.05.17.
//  Copyright © 2017 Andrey Sokur. All rights reserved.
//

import Foundation

public func solution(_ S : inout String) -> Int {
    if S.characters.count % 2 != 0 || S.characters.count > 200000 {
        return 0
    }
    
    let pairs: [Character: Character] = ["]": "[", "}": "{", ")": "("]
    let openBrackets: [Character] = ["[", "{", "("]
    var A = [Character]()
    
    for i in S.characters {
        if openBrackets.contains(i) {
            A.append(i)
        } else {
            if !(A.isEmpty) && pairs[i] == A.last {
                A.removeLast()
            } else {
                A.append(i)
            }
        }
    }
    
    return A.isEmpty ? 1 : 0
}

var s = "{[()()]}"
var large = String(repeating: "(", count: 100000) + String(repeating: ")", count: 100000) + ")("

print(solution(&s))
print(solution(&large))
