//
//  ViewController.swift
//  Storyboardless
//
//  Created by Obolewicz Marcin (Ext) on 05/01/16.
//  Copyright © 2016 Obolewicz Marcin (Ext). All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var label1: UILabel?
    var label2: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupLabels()
        self.updateConstraints()
    }
    

    
    func setupLabels() {
        self.label1 = UILabel()
        self.label1!.text = "Do your stuff"
        self.label1!.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(label1!)
        
        self.label2 = UILabel()
        self.label2!.text = "Or do not, there's no try"
        self.label2!.translatesAutoresizingMaskIntoConstraints = false

        self.view.addSubview(label2!)
    }
    
    func updateConstraints(){
        let viewsDictionary =
        [
            "label1" : self.label1 as! AnyObject,
            "label2" : self.label2 as! AnyObject
        ]
        
        var format: String
        var constraintsArray: [NSLayoutConstraint]
        
        format = "H:|-[label1]-[label2]-|"
        constraintsArray = NSLayoutConstraint.constraintsWithVisualFormat(format, options:NSLayoutFormatOptions(rawValue: 0), metrics:nil, views:viewsDictionary)
        self.view.addConstraints(constraintsArray)
        
        format = "V:|-[label1]-|"
        constraintsArray = NSLayoutConstraint.constraintsWithVisualFormat(format, options:NSLayoutFormatOptions(rawValue: 0), metrics:nil, views:viewsDictionary)
        self.view.addConstraints(constraintsArray)
        
        format = "V:|-[label2]-|"
        constraintsArray = NSLayoutConstraint.constraintsWithVisualFormat(format, options:NSLayoutFormatOptions(rawValue: 0), metrics:nil, views:viewsDictionary)
        self.view.addConstraints(constraintsArray)
        
    }
}
