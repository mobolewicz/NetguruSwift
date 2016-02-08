//
//  FlowController.swift
//  NetguruSwift
//
//  Created by Marcin on 08.02.2016.
//  Copyright © 2016 Marcin. All rights reserved.
//

import UIKit

private let sharedFlowController = FlowController()

class FlowController: NSObject {
    var window: UIWindow?
    let tableViewController = PartiesTable()
    
    class var sharedInstance: FlowController{
        get
    {
        return sharedFlowController
        }
    }
    private override init() {}
    
    func setupWindow(window: UIWindow?){
        self.window = window
        let viewController = PartiesTable()
        let navigationVC = UINavigationController(rootViewController:viewController)
        navigationVC.navigationBar.translucent = false
        if let appWindow = self.window{
            appWindow.rootViewController = navigationVC
            appWindow.backgroundColor = UIColor.whiteColor()
            appWindow.makeKeyAndVisible()
        }
    }
    
//    func showCreateNewDrink(){
//        self.tabBarController.navigationDrinksCollection.pushViewController(CreateDrinkViewController(), animated: true)
//    }
    
//    func goBackFromCreateDrink(drink: Drink){
//        self.tabBarController.drinksCollection.collectionView.reloadData()
//        self.tabBarController.navigationDrinksCollection.popViewControllerAnimated(true)
//    }
    
    func showCreateNewParty(){
//        self.tabBarController.navigationPartiesTable.pushViewController(CreatePartyViewController(), animated: true)
    }
    
//    func showPartyDetailController(party: Party){
//        self.tabBarController.navigationPartiesTable.pushViewController(PartyDetailViewController(aParty: party), animated: true)
//    }
    
//    func goBackFromCreateParty(newParty: Party){
//        self.tabBarController.partiesTable.tableView.reloadData()
//        self.tabBarController.navigationPartiesTable.popViewControllerAnimated(true)
//    }
}