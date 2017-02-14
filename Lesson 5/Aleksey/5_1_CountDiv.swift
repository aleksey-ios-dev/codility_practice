//
//  5_1_CountDiv.swift
//  
//
//  Created by Aleksey on 1/25/17.
//
//

import Foundation

public func solution(_ A : Int, _ B : Int, _ K : Int) -> Int {
  guard A <= B else { return 0 }
    
  return A % K == 0 ? B / K - A / K + 1 : B / K - A / K
}

