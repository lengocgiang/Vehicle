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
        let mustang = Car()
        mustang.create("Ford", modelName: "Mustang", modelYear: 1968, isConvertible: true, isHatchback: false, hasSunroof: false, numberOfDoors: 2, powerSource: "Gas engine")
        // add to the array
        vehicles.append(mustang)
        
        // Create onother car
        let outback = Car()
        outback.create("Subaru", modelName: "Outback", modelYear: 1999, isConvertible: false, isHatchback: true, hasSunroof: false, numberOfDoors: 5, powerSource: "Gas engine")
        vehicles.append(outback)
        
        // Create another car
        let prius = Car()
        prius.create("Toyota", modelName: "Prius", modelYear: 2002, isConvertible: true, isHatchback: false, hasSunroof: true, numberOfDoors: 4, powerSource: "hybrid engine")
        vehicles.append(prius)
            
        // Create motocycle
        let harley = Motocycle()
        harley.brandName = "Harley-Davidson"
        harley.modelName = "Softail"
        harley.modelYear = 1979
        harley.engineNoise = "Vrrrrrrrooooooom"
        vehicles.append(harley)
        
        // Create 
        let kawasaki = Motocycle()
        kawasaki.brandName = "Kawasaki"
        kawasaki.modelName = "Ninja"
        kawasaki.modelYear = 2005
        kawasaki.engineNoise = "Neeeeeeeeeeeeow!"
        vehicles.append(kawasaki)
        
        // Create truck
        let silverado = Truck()
        silverado.brandName = "Chevrolet"
        silverado.modelName = "Silverado"
        silverado.modelYear = 2011
        silverado.numberOfWhells = 4
        silverado.cargoCapacityCubcFeet = 53
        silverado.powerSource = "gas engine"
        vehicles.append(silverado)
        
        // create another truck
        let eighteenWheeler = Truck()
        eighteenWheeler.brandName = "Peterbilt"
        eighteenWheeler.modelName = "579"
        eighteenWheeler.modelYear = 2013
        eighteenWheeler.numberOfWhells = 18
        eighteenWheeler.cargoCapacityCubcFeet = 408
        eighteenWheeler.powerSource = "diesel engine"
        vehicles.append(eighteenWheeler)
   
        // Sort the array by model year
        vehicles.sortInPlace{$0.modelYear < $1.modelYear}
        
    }
}

