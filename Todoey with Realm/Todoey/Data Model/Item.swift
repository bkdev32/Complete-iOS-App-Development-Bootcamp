//
//  Item.swift
//  Todoey
//
//  Created by Burhan Kaynak on 18/01/2021.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title : String = ""
    @objc dynamic var done : Bool = false
    @objc dynamic var dateCreated : Date?
    // to define the inverse relationship
    // property refers to what is the name of the forward relationships
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
