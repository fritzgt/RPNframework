//
//  DigitAccumulator.swift
//  RPN
//
//  Created by FGT MAC on 8/7/20.
//  Copyright © 2020 FGT MAC. All rights reserved.
//

import Foundation

public enum DigitAccumulatorError: Error {
    case invalidNumberValue
    case extraDecialPoint
}

public struct DigitAccumulator {
    
    //MARK: - Enums
    
    public enum Digit: Equatable {
        case decimalPoint
        case number(Int)
    }
    
    //MARK: - Properties
    
    private var digits: [Digit] = []
    
    //MARK: - Methods
    
    public mutating func add(digit: Digit) throws {//Use to indicate that it can throw and error if something goes wrong
        switch digit {
        case .number(let value):
            if value < 0 || value > 9{//If the value is not between 0-9
                throw DigitAccumulatorError.invalidNumberValue //Throws an error
            }
        case .decimalPoint:
            if digits.contains(.decimalPoint){
                throw DigitAccumulatorError.extraDecialPoint
            }
        }
        digits.append(digit)//append one the above checks pass
    }
    

    public mutating func clear() {
        digits.removeAll()
    }
    
    public func value() -> Double? {
        let string = digits.map { (digit) -> String in //Mutates each digit into a string
            switch digit {
            case .decimalPoint:
                return "."
            case .number(let value):
                return String(value)
            }
        }.joined() // join all the characters into a single string
        return Double(string)
    }
}
