//
//  Party.swift
//  NetguruSwift
//
//  Created by Marcin on 08.02.2016.
//  Copyright © 2016 Marcin. All rights reserved.
//

import Foundation
import UIKit
import RealmSwift

class Party: Object {
    dynamic var name = ""
    dynamic var active = false
    var image: UIImage?
//    dynamic var dateString = ""
//    var drinksAtThePartyList = List<DrinkAtTheParty>()

    convenience required init(aName: String) {
        self.init()
        active = true
        name = aName
//        dateString = NSDate.stringDateNow()
    }
    
    override static func ignoredProperties() -> [String] {
        return ["image"]
    }
}