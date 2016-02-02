//
//  UIAlertController+Convenience.swift
//  Vehicles
//
//  Created by Le Ngoc Giang on 1/29/16.
//  Copyright © 2016 gianglengoc. All rights reserved.
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
        
        /*
        controller.addAction(UIAlertAction(title: "Cancel", style: .Cancel, handler: nil))
        
        controller.addAction(UIAlertAction(title: buttonTitle, style: .Default, handler: { (action) -> Void in
            print("buttontitle: \(buttonTitle)")
        })
        */
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action) -> Void in
            print("Action cancel")
        }
        let okAction = UIAlertAction(title: buttonTitle, style: .Default) { (action) -> Void in
            print("Action ok")
            let textfield = controller.textFields![0] as UITextField
            let value = Int(textfield.text!)
            handle(value)
            
        }
        controller.addAction(cancelAction)
        controller.addAction(okAction)
        
        return controller
    }
}