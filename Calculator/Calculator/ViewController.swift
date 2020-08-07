//
//  ViewController.swift
//  Calculator
//
//  Created by FGT MAC on 8/7/20.
//  Copyright © 2020 FGT MAC. All rights reserved.
//

import UIKit
import RPN

class ViewController: UIViewController {
    
    //MARK: - Properties
    private var calculator = Calculator()
    
    private var digitAccumulator = DigitAccumulator()
    
    
    //MARK: - View lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func numberButtonTap(_ sender: UIButton){
        try? digitAccumulator.add(digit: .number(sender.tag))
    }

}

