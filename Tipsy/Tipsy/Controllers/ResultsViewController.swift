//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Burhan Kaynak on 08/01/2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var billTotal = "0"
    var splitNumber = 2
    var tip = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLabel.text = billTotal
        settingsLabel.text = "Split between \(splitNumber) people, with \(tip)% tip."
        
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}
