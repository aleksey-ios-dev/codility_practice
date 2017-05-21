//
//  7.1 Brackets.swift
//  Codility
//
//  Created by Andrey Sokur on 13.05.17.
//  Copyright © 2017 Andrey Sokur. All rights reserved.
//

import Foundation

extension Character {
  static var openingBrace: Character = "("
  static var closingBrace: Character = ")"
}

class BraceWithCount {
  var count = 1
  var brace: Character
  
  init(_ brace: Character) {
    self.brace = brace
  }
}

public func solution(_ S : inout String) -> Int {
  guard !S.isEmpty else { return 1 }
  
  var braces = [BraceWithCount]()
  
  for character in S.characters {
    if character == .openingBrace {
      if let lastBrace = braces.last, lastBrace.brace == .openingBrace {
        lastBrace.count += 1
      } else {
        braces.append(BraceWithCount(character))
      }
    } else {
      guard let lastBrace = braces.last, lastBrace.brace == .openingBrace else { return 0 }
      lastBrace.count -= 1
      if lastBrace.count == 0 {
        braces.removeLast()
      }
    }
  }
  
  return braces.isEmpty ? 1 : 0
}

