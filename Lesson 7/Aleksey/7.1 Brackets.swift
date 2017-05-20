//
//  7.1 Brackets.swift
//  Codility
//
//  Created by Andrey Sokur on 13.05.17.
//  Copyright © 2017 Andrey Sokur. All rights reserved.
//

import Foundation

enum OpeningBrace: String {
  case roundOpen = "("
  case squareOpen = "["
  case figureOpen = "{"
  
  func isOpening(for closing: ClosingBrace) -> Bool {
    return (self == .roundOpen && closing == .roundClose)
      || (self == .squareOpen && closing == .squareClose)
      || (self == .figureOpen && closing == .figureClose)
  }
}

enum ClosingBrace: String {
  case roundClose = ")"
  case squareClose = "]"
  case figureClose = "}"
}

public func solution(_ S : inout String) -> Int {
  guard !S.isEmpty else { return 1 }
  
  var braces = [OpeningBrace]()
  
  for character in S.characters {
    if let opening = OpeningBrace(rawValue: String(character)) {
      braces.append(opening)
    } else if let closing = ClosingBrace(rawValue: String(character)) {
      if braces.last?.isOpening(for: closing) ?? false {
        braces.removeLast()
      } else {
        return 0
      }
    }
  }
  
  return braces.isEmpty ? 1 : 0
}
