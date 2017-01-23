//: Playground - noun: a place where people can play

import UIKit
import Foundation


public func solution(_ A : inout [Int]) -> Int {

    // MARK: - SET
    let set = Set(A)
    var i = 1
    
    while true {
        if !set.contains(i) {
            return i
        }
        
        i += 1
    }
    
    
    /*
    // MARK: - DICTIONARY
    
    var a = [Int:Bool]()
    
    for i in A {
        a[i] = true
    }
    
    var i = 1
    
    while true {
        if a[i] == nil {
            return i
        }
        
        i += 1
    }
    */
    
    
    /*
     // MARK: - WITH SORT()
     // 88% Проседает на performance из-за sorted()
     
     var missing = 1
     
     let b = A.sorted()
     
     for i in b {
     if i == missing {
     missing += 1
     } else if i > missing {
     break
     }
     }
     return missing
     
     */
}




var A = [Int]()

A += 1...10000
A.remove(at: 344)
//A.removeFirst()

solution(&A)
