//
//  CoinModel.swift
//  ByteCoin
//
//  Created by Burhan Kaynak on 11/01/2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct CoinModel {
    let currency: String
    let rate: Double
    
    var rateString: String {
        return String(format: "%.2f", rate)
    }
}
