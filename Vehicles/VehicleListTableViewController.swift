//
//  MasterViewController.swift
//  Vehicles
//
//  Created by Ray Fix on 9/8/14.
//  Copyright (c) 2014 Razeware, LLC. All rights reserved.
//

import UIKit

class VehicleListTableViewController: UITableViewController {
    
    var vehicles:[Vehicle] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupVehicleArray()
        title = "Vehicle"
    }
    
    // MARK: - Segues
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let vehicle = vehicles[indexPath.row]
                (segue.destinationViewController as! VehicleDetailViewController).detailVehicle = vehicle
            }
        }
    }

    // MARK: - Table View
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vehicles.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        
        let vehicle = vehicles[indexPath.row]
        cell.textLabel?.text = "\(vehicle.vehicleTitle)"
        
        return cell
    }
    /*
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let vehicleSelected = vehicles[indexPath.row]
        let  detailVC = self.storyboard?.instantiateViewControllerWithIdentifier("VehicleDetailViewController") as! VehicleDetailViewController
        detailVC.detailVehicle = vehicleSelected
        self.navigationController?.pushViewController(detailVC, withCustomTransition: CustomViewAnimationTransitionPush, subtype: nil)
    }
    */
    // MARK: Data setup
    func setupVehicleArray() {
        
        vehicles.removeAll(keepCapacity: true)
        
        // Create a car
        var mustang = Car()
        mustang.create("Ford", modelName: "Mustang", modelYear: 1968, isConvertible: true, isHatchback: false, hasSunroof: false, numberOfDoors: 2, powerSource: "Gas engine")
        // add to the array
        vehicles.append(mustang)
        
        // Create onother car
        var outback = Car()
        outback.create("Subaru", modelName: "Outback", modelYear: 1999, isConvertible: false, isHatchback: true, hasSunroof: false, numberOfDoors: 5, powerSource: "Gas engine")
        vehicles.append(outback)
        
        // Create another car
        var prius = Car()
        prius.create("Toyota", modelName: "Prius", modelYear: 2002, isConvertible: true, isHatchback: false, hasSunroof: true, numberOfDoors: 4, powerSource: "hybrid engine")
        vehicles.append(prius)
        
        // Sort the array by model year
        vehicles.sort{$0.modelYear < $1.modelYear}
        
    }
}

