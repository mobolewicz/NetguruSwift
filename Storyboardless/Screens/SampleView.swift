//
//  ViewController.swift
//  Storyboardless
//
//  Created by Obolewicz Marcin (Ext) on 05/01/16.
//  Copyright © 2016 Obolewicz Marcin (Ext). All rights reserved.
//

import UIKit

class SampleView: UIView {

    var button: UIButton?
    var label: UILabel?
    
    func updateView() {
        self.setupButton()
        self.setupLabel()
        self.updateConstraints()
    }

    func setupButton() {
        self.button = UIButton(type: UIButtonType.System)
        self.button?.setTitle("Button", forState: .Normal)
        self.button?.layer.borderWidth = 1.0
        self.button?.layer.cornerRadius = 10;
        self.button?.translatesAutoresizingMaskIntoConstraints = false
        self.button?.addTarget(self, action: "buttonTapped:", forControlEvents: UIControlEvents.TouchUpInside)
        self.addSubview(button!)
    }
    
    func buttonTapped(sender:UIButton!) {
        print("Button tapped")
    }
    
    func setupLabel() {
        self.label = UILabel()
        self.label!.text = "Label"
        self.label?.layer.borderWidth = 1.0
        self.label?.layer.cornerRadius = 10;
        self.label!.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(label!)
    }
    
    override func updateConstraints(){
        super.updateConstraints()
        let viewsDictionary =
        [
            "button" : self.button as! AnyObject,
            "label" : self.label as! AnyObject
        ]
        
        var format: String
        var constraintsArray: [NSLayoutConstraint]
        
        format = "H:|-50-[button(>=100)]-[label(>=100)]-50-|"
        constraintsArray = NSLayoutConstraint.constraintsWithVisualFormat(format, options:NSLayoutFormatOptions(rawValue: 0), metrics:nil, views:viewsDictionary)
        self.addConstraints(constraintsArray)
        
        format = "V:|-50-[button(>=100)]-50-|"
        constraintsArray = NSLayoutConstraint.constraintsWithVisualFormat(format, options:NSLayoutFormatOptions(rawValue: 0), metrics:nil, views:viewsDictionary)
        self.addConstraints(constraintsArray)
        
        format = "V:|-50-[label(>=100)]-50-|"
        constraintsArray = NSLayoutConstraint.constraintsWithVisualFormat(format, options:NSLayoutFormatOptions(rawValue: 0), metrics:nil, views:viewsDictionary)
        self.addConstraints(constraintsArray)
        
    }
}
