//
//  Category.swift
//  Todoey
//
//  Created by Burhan Kaynak on 18/01/2021.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name : String = ""
    @objc dynamic var color : String = ""
    // to define the forward relationship
    let items = List<Item>() // let array = Array<Int>()

}
