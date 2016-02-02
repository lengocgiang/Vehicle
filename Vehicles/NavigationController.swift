//
//  NavigationController.swift
//  Vehicles
//
//  Created by Le Ngoc Giang on 1/28/16.
//  Copyright © 2016 gianglengoc. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    override func popViewControllerAnimated(animated: Bool) -> UIViewController? {
//        self.navigationBarHidden = true
//        let vc:UIViewController = super.popViewControllerAnimated(animated)!
//        self.navigationBarHidden = false
//        return vc
//    }
//    
//    override func pushViewController(viewController: UIViewController, animated: Bool) {
//        self.navigationBarHidden = true
//        self.pushViewController(viewController, animated: animated)
//        self.navigationBarHidden = false
//    }

}
