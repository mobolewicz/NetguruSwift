//
//  RealmHelper.swift
//  NetguruSwift
//
//  Created by Marcin on 08.02.2016.
//  Copyright © 2016 Marcin. All rights reserved.
//

import Foundation
import RealmSwift

extension Results {
    func toArray<T>(ofType: T.Type) -> [T] {
        var array = [T]()
        for var i = 0; i < count; i++ {
            if let result = self[i] as? T {
                array.append(result)
            }
        }
        return array
    }
}

class RealmHelper: NSObject{
    
    class func addParty(party: Party){
        let realm = try! Realm()
        try! realm.write {
            realm.add(party)
        }
    }
    
    func removePartyAtIndex(index: Int){
        RealmHelper.deleteObject(DataManager.sharedInstance.partiesList[index])
        DataManager.sharedInstance.partiesList.removeAtIndex(index)
    }
    
    class func updateTransaction(completion: ()->()){
        let realm = try! Realm()
        try! realm.write {
            completion()
        }
    }
    
    class func deleteObject(object: Object){
        let realm = try! Realm()
        try! realm.write {
            realm.delete(object)
        }
    }
    
}