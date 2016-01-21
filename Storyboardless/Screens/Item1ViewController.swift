//
//  DetailViewController.swift
//  Storyboardless
//
//  Created by Marcin on 14.01.2016.
//  Copyright © 2016 Obolewicz Marcin (Ext). All rights reserved.
//

import UIKit

class Item1ViewController: UIViewController {
    
    var sampleView = SampleView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sampleView.updateView()
        self.view = sampleView
        view.backgroundColor = UIColor.greenColor()
        self.title = Constants.item1Name
        print("item 1 loaded")
    }
}
