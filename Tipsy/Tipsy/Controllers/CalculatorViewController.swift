//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tip = 0.10
    var splitNumber = 0
    var billResult = 0.0
    var myCalculator = "0"
    
    @IBAction func tipChanged(_ sender: UIButton) {
        view.endEditing(true)
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
        
        let buttonTitle = sender.currentTitle!
        let buttonTitleWithoutPct = String(buttonTitle.dropLast())
        let tipNumber = Double(buttonTitleWithoutPct)!
        tip = tipNumber / 100
        
    }
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumber = Int(sender.value)
        splitNumberLabel.text = String(splitNumber)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
       
        let myBill = billTextField.text!
        if myBill != "" {
            billResult = Double(myBill)!
            let result = billResult * (1 + tip) / Double(splitNumber)
            myCalculator = String(format: "%.2f", result)
        }
        
        performSegue(withIdentifier: "toResultsView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResultsView" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.billTotal = myCalculator
            destinationVC.splitNumber = splitNumber
            destinationVC.tip = Int(tip * 100)
        }
    }
}
