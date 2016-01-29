//
//  UIAlertController+Convenience.swift
//  Vehicles
//
//  Created by Le Ngoc Giang on 1/29/16.
//  Copyright © 2016 Razeware, LLC. All rights reserved.
//

import Foundation

extension UIAlertController {
    
    // Decorator pattern
    class func alertControllerWithTitle(title:String,message:String)->UIAlertController {

        let controller = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        
        controller.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
        
        return controller
    }
    
    class func alertControllerWithNumberInput(title:String, message:String,buttonTitle:String,handle:(Int?)->Void)->UIAlertController {
        
        let controller = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        
        controller.addTextFieldWithConfigurationHandler {$0.keyboardType = .NumberPad}
        
        controller.addAction(UIAlertAction(title: "Cancel", style: .Cancel, handler: nil))
        
        controller.addAction(UIAlertAction(title: buttonTitle, style: .Default, handler: { (<#UIAlertAction#>) -> Void in
            <#code#>
        }))

        return controller
    }
}