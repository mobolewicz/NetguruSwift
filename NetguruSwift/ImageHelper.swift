//
//  ImageHelper.swift
//  NetguruSwift
//
//  Created by Marcin on 08.02.2016.
//  Copyright © 2016 Marcin. All rights reserved.
//

import UIKit


extension UIImage{
    func saveImageAs(name: String) -> Bool{
        let imageData = NSData(data:UIImagePNGRepresentation(self)!)
        let paths = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)
        let docs: NSString = paths[0]
        let fullPath = docs.stringByAppendingPathComponent(name)
        return imageData.writeToFile(fullPath, atomically: true)
    }
    
    class func readImage(name: String) -> UIImage?{
        let paths = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)
        let docs: NSString = paths[0]
        let fullPath = docs.stringByAppendingPathComponent(name)
        let url = NSURL(fileURLWithPath: fullPath)
        if let imageData = NSData(contentsOfURL: url){
            if let image = UIImage(data: imageData){
                return image
            }
        }
        
        return nil
    }
}
