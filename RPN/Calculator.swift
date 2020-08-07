//
//  Calculator.swift
//  RPN
//
//  Created by FGT MAC on 8/7/20.
//  Copyright © 2020 FGT MAC. All rights reserved.
//

import Foundation

public struct Calculator {
    
    public enum Operator {
        case add
        case subtract
        case multiply
        case divide
    }
    
    private var stack: Stack<Double> = [0.0,0.0]//Init an array with double type
    
    public init() {
        
    }
    
    //Adds a number to the stack
    public mutating func push(_ number: Double){
        stack.push(number)
    }
    
    public mutating func push(operator: Operator){
        
        let operand2 = stack.pop() ?? 0.0//removes the last num on the stack and saves it to the variable
        let operand1 = stack.pop() ?? 0.0//removes and save the element on the button of the stack
        
        var result: Double
        
        switch `operator` {//By using backtics we tell xcode to use the oprator parameter from the function
        case .add:
            result = operand1 + operand2
        case .subtract:
            result = operand1 - operand2
        case .multiply:
            result = operand1 * operand2
        case .divide:
            result = operand1 / operand2
        }
        
        stack.push(result)//Since we pop the two items in the stack we can now push the result to the stack to chain and continue adding numbers if wanted like 2 + 5 = 7, 7 + 3 = 10 etc
        
    }
    
}
