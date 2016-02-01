//
//  DetailViewController.swift
//  Vehicles
//
//  Created by Ray Fix on 9/8/14.
//  Copyright (c) 2014 Razeware, LLC. All rights reserved.
//

import UIKit

class VehicleDetailViewController: UIViewController {
    
    @IBOutlet weak var detailDescriptionLabel: UILabel!
    
    var detailVehicle: Vehicle? {
        didSet {
            // Update the view.
            self.configureView()
            
        }
    }
    
    func configureView() {
        // Update the user interface for the detail item.
        if let vehicle = detailVehicle {
            // TODO: Fill this in.
            title = vehicle.vehicleTitle
            detailDescriptionLabel?.text = vehicle.vehicleDetail
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
    
    @IBAction func goForward(sender: AnyObject) {
        // TODO: Fill this in.
        // if let vehicle statement makes sure that vehicle exists, and if it does
        // creates an alert controller using extension and presents it.
        
        if let vehicle = detailVehicle {
            let controller = UIAlertController.alertControllerWithTitle("Go forward", message: vehicle.goForward())
            presentViewController(controller, animated: true, completion: nil)
        }
    }
    
    @IBAction func goBackward(sender: AnyObject) {
        // TODO: Fill this in.
        if let vehicle = detailVehicle {
            let controller = UIAlertController.alertControllerWithTitle("Go backward", message: vehicle.goBackward())
            presentViewController(controller, animated: true, completion: nil)
        }
    }
    
    @IBAction func stopMoving(sender: AnyObject) {
        // TODO: Fill this in.
        if let vehicle = detailVehicle {
            let controller = UIAlertController.alertControllerWithTitle("Stop moving", message: vehicle.stopMoving())
            presentViewController(controller, animated: true, completion: nil)
        }
    }
    
    @IBAction func turn(sender: AnyObject) {
        //TODO: Fill this in.
        if let vehicle = detailVehicle {
            let controller = UIAlertController.alertControllerWithNumberInput("Turn", message: "Enter number of degree to turn", buttonTitle: "Go!", handle: { (action) -> Void in
                //print("\(action)")
                if let value = action {
                    let controller = UIAlertController.alertControllerWithTitle("Turn", message: vehicle.turn(value))
                    self.presentViewController(controller, animated: true, completion: nil)
                }
            })
            presentViewController(controller, animated: true, completion: nil)
        }
    }
    
    @IBAction func makeNoise(sender: AnyObject) {
        // TODO: Fill this in.
        if let vehicle = detailVehicle {
            let controller = UIAlertController.alertControllerWithTitle("Make some noise!", message: vehicle.makeNoise())
            presentViewController(controller, animated: true, completion: nil)
        }
    }
    
}
