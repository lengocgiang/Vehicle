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
            /*
            var basicDetails = "Basic vehicle details : \n\n"
            basicDetails += "Brand name: \(vehicle.brandName)\n"
            basicDetails += "Model name: \(vehicle.modelName)\n"
            basicDetails += "Model year: \(vehicle.modelYear)\n"
            basicDetails += "Power source: \(vehicle.powerSource)\n"
            basicDetails += "# of wheels: \(vehicle.numberOfWhells)\n"
            */
            detailDescriptionLabel?.text = vehicle.vehicleDetail
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
    
    @IBAction func goForward(sender: AnyObject) {
        // TODO: Fill this in.
    }
    
    @IBAction func goBackward(sender: AnyObject) {
        // TODO: Fill this in.
    }
    
    @IBAction func stopMoving(sender: AnyObject) {
        // TODO: Fill this in.
    }
    
    @IBAction func turn(sender: AnyObject) {
        //TODO: Fill this in.
    }
    
    @IBAction func makeNoise(sender: AnyObject) {
        // TODO: Fill this in.
    }
    
}
