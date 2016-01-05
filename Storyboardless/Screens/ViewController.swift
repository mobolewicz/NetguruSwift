//
//  ViewController.swift
//  Storyboardless
//
//  Created by Obolewicz Marcin (Ext) on 05/01/16.
//  Copyright © 2016 Obolewicz Marcin (Ext). All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupLabel()
    }
    
    func setupLabel() {
        let label = UILabel(frame: self.view.frame)
        label.text = "Do your stuff"
        label.center = self.view.center
        self.view.addSubview(label)
    }
}
