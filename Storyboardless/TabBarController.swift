//
//  TabBarController.swift
//  Storyboardless
//
//  Created by Marcin on 20.01.2016.
//  Copyright © 2016 Obolewicz Marcin (Ext). All rights reserved.
//

import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.translucent = false
        delegate = self
    }
    
    override func viewWillAppear(animated: Bool) {
        let item1 = Item1ViewController()
        let icon1 = UITabBarItem(title: Constants.item1Name, image: UIImage(named: "icon1"), tag: 0)
        let item2 = Item2ViewController()
        let icon2 = UITabBarItem(title: Constants.item2Name, image: UIImage(named: "icon2"), tag: 1)
        
        item1.tabBarItem = icon1
        item2.tabBarItem = icon2
        let controllers = [item1, item2]  //array of the root view controllers displayed by the tab bar interface
        self.viewControllers = controllers
    }
    
    //Delegate methods
    func tabBarController(tabBarController: UITabBarController, shouldSelectViewController viewController: UIViewController) -> Bool {
        print("Should select viewController: \(viewController.title) ?")
        return true;
    }
}
