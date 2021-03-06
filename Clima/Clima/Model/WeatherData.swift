//
//  WeatherData.swift
//  Clima
//
//  Created by Burhan Kaynak on 09/01/2021.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation


struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
}

struct Weather: Codable {
    let id: Int
}


