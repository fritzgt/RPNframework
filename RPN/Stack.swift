//
//  Stack.swift
//  RPN
//
//  Created by FGT MAC on 8/7/20.
//  Copyright © 2020 FGT MAC. All rights reserved.
//

import Foundation

struct Stack<Element>: ExpressibleByArrayLiteral {
    
    //MARK: - Properties
    typealias ArrayLiteralElement = Element//USe to decribe the type inside the array literal
    
    private(set) var elements: [Element]//Makes the setter private to be set only inside the struct but readonly outside
    
    init(arrayLiteral elements: Element...) {//Initiate the array
        self.elements = elements
    }
    
    //MARK: - Methods
    
    //Adds element to the array
    mutating func push(_ element: Element) {//Mutating because we are changing a property in a struct
        elements.append(element)
    }
    
    //Removes the last element to the array
    mutating func pop() -> Element? {
        return elements.popLast()
    }
    
    //Shows the item at the top of the stack
    func peek() -> Element? {
        return elements.last
    }
    
}
