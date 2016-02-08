//
//  PartyCellView.swift
//  NetguruSwift
//
//  Created by Marcin on 08.02.2016.
//  Copyright © 2016 Marcin. All rights reserved.
//

import UIKit
import AssetsLibrary


class PartyCellView: UIView {
    var label:UILabel
    var imageView:UIImageView
    
    override init(frame: CGRect) {
        self.label = UILabel()
        self.imageView = UIImageView()
        super.init(frame: frame)
        
        self.backgroundColor    = UIColor.whiteColor()
        self.layer.cornerRadius = 20.0
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //    override func layoutSubviews() {
    //        super.layoutSubviews()
    //        self.label.frame = self.bounds
    //    }
    
    func updateView(party: Party) {
        self.setupLabel(party)
        self.setupImageView(party)
        self.updateConstraints()
    }
    
    func setupLabel(party: Party){
        self.label.font = UIFont.boldSystemFontOfSize(24)
        self.label.text = party.name
        self.label.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(label)
    }
    
    func setupImageView(party: Party) {
        if let _ = party.image{
        }else{
            party.image = UIImage.readImage(party.name)
        }
        self.imageView.image = party.image
        self.imageView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(imageView)
    }
    
    override func updateConstraints(){
        super.updateConstraints()
        let viewsDictionary =
        [
            "label" : self.label as AnyObject,
            "imageView":self.imageView as AnyObject,
        ]
        
        var format: String
        var constraintsArray: [NSLayoutConstraint]
        
        format = "H:|-20-[imageView(100)]-10-[label]-(>=20)-|"
        constraintsArray = NSLayoutConstraint.constraintsWithVisualFormat(format, options:NSLayoutFormatOptions(rawValue: 0), metrics:nil, views:viewsDictionary)
        self.addConstraints(constraintsArray)
        
        format = "V:|-20-[imageView(100)]-(>=20)-|"
        constraintsArray = NSLayoutConstraint.constraintsWithVisualFormat(format, options:NSLayoutFormatOptions(rawValue: 0), metrics:nil, views:viewsDictionary)
        self.addConstraints(constraintsArray)
        
        format = "V:|-20-[label(40)]-(>=20)-|"
        constraintsArray = NSLayoutConstraint.constraintsWithVisualFormat(format, options:NSLayoutFormatOptions(rawValue: 0), metrics:nil, views:viewsDictionary)
        self.addConstraints(constraintsArray)
    }
    
}
