//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Burhan Kaynak on 20/01/2021.
//  Copyright © 2021 London App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    private var number: Double?
    private var intermediateCalculation: (n1: Double, calcMethod: String)?
    
    mutating func setNumber(_ number: Double) {
        self.number = number
    }
    
    mutating func calculate(symbol: String) -> Double? {
        if let n = number {
            switch symbol {
            case "+/-":
                return n * -1 // converting into negative/positive
            case "AC":
                return 0 // clear the label
            case "%":
                return n * 0.01 // % function
            case "=":
                return performTwoNumberCalculation(n2: n)
            default:
                intermediateCalculation = (n1: n, calcMethod: symbol)
            }
        }
        return nil
    }
    private func performTwoNumberCalculation(n2: Double) -> Double? {
        // if intermediate calculation is not nil, then tap into n1 and bind it to let n1,
        // if intermediate calculation is not nil again, then tap into calcMethod and assign it to operation
        if let n1 = intermediateCalculation?.n1,
           let operation = intermediateCalculation?.calcMethod {
            
            switch operation {
            case "+":
                return n1 + n2
            case "-":
                return n1 - n2
            case "×":
                return n1 * n2
            case "÷":
                return n1 / n2
            default:
                fatalError("The operation passed in does not match any of the cases")
            }
        }
        return nil
    }
}

