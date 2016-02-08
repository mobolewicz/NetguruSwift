//
//  DataManager.swift
//  NetguruSwift
//
//  Created by Marcin on 08.02.2016.
//  Copyright © 2016 Marcin. All rights reserved.
//

import UIKit
import RealmSwift

private let sharedDataManager = DataManager()

class DataManager: NSObject {
    var activeParty: Party?
    class var sharedInstance: DataManager{
        get
    {
        return sharedDataManager
        }
    }
    
    lazy var partiesList:Array<Party> = {
        let realm = try! Realm()
        var pl:Array<Party> = realm.objects(Party).sorted("dateString", ascending: false).toArray(Party)
        for party in pl{
            if party.active == true{
                self.activeParty = party
            }
        }
        return pl
    }()
}