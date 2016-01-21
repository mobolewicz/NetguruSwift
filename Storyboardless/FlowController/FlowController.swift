//
//  FlowController.swift
//  Storyboardless
//
//  Created by Marcin on 14.01.2016.
//  Copyright © 2016 Obolewicz Marcin (Ext). All rights reserved.
//

import UIKit

private let sharedFlowController = FlowController()

class FlowController: NSObject {
    var window: UIWindow?

    class var sharedInstance: FlowController{
        get
        {
            return sharedFlowController
        }
    }
    
    private override init() {}
    
    func setupWindow(window: UIWindow?){
        self.window = window
        let viewController = TabBarController()
        let navigationVC = UINavigationController(rootViewController:viewController)
        navigationVC.navigationBar.translucent = false
        if let appWindow = self.window{
            appWindow.rootViewController = navigationVC
            appWindow.backgroundColor = UIColor.whiteColor()
            appWindow.makeKeyAndVisible()
        }
    }
    
}
