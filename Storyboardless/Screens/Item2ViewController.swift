//
//  Item2ViewController.swift
//  Storyboardless
//
//  Created by Marcin on 20.01.2016.
//  Copyright © 2016 Obolewicz Marcin (Ext). All rights reserved.
//

import UIKit

class Item2ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.yellowColor()
        self.title = Constants.item2Name
        print("item 2 loaded")
    }
}