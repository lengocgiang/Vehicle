//
//  MasterViewController.swift
//  Vehicles
//
//  Created by Le Ngoc Giang on 9/8/14.
//  Copyright (c) 2014 gianglengoc. All rights reserved.
//

import UIKit

class VehicleListTableViewController: UITableViewController {
    
    var vehicles:[Vehicle] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //setupVehicleArray()
        title = "Vehicle"
    }
    
    // MARK: - Segues
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                //let vehicle = vehicles[indexPath.row]
                let vehicle = VehicleList.sharedInstance.vehicles[indexPath.row]
                (segue.destinationViewController as! VehicleDetailViewController).detailVehicle = vehicle
            }
        }
    }

    // MARK: - Table View
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return VehicleList.sharedInstance.vehicles.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        
        //let vehicle = vehicles[indexPath.row]
        let vehicle = VehicleList.sharedInstance.vehicles[indexPath.row]
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
        
        // Clear the array. (Start from scratch.)
        vehicles.removeAll(keepCapacity: true)
        
        // Create a car.
        let mustang = Car(brandName: "Ford", modelName: "Mustang", modelYear: 1968, powerSource: "gas engine",
            isConvertible: true, isHatchback: false, hasSunroof: false, numberOfDoors: 2)
        
        // Add it to the array
        vehicles.append(mustang)
        
        // Create another car.
        let outback = Car(brandName: "Subaru", modelName: "Outback", modelYear: 1999, powerSource: "gas engine",
            isConvertible: false, isHatchback: true, hasSunroof: false, numberOfDoors: 5)
        
        // Add it to the array.
        vehicles.append(outback)
        
        // Create another car
        let prius = Car(brandName: "Toyota", modelName: "Prius", modelYear: 2002, powerSource: "hybrid engine",
            isConvertible: false, isHatchback: true, hasSunroof: true, numberOfDoors: 4)
        
        // Add it to the array.
        vehicles.append(prius)
        
        // Create a motorcycle
        let harley = Motocycle(brandName: "Harley-Davidson", modelName: "Softail", modelYear: 1979, engineNoise: "Vrrrrrrrroooooooooom!")
        
        // Add it to the array.
        vehicles.append(harley)
        
        // Create another motorcycle
        let kawasaki = Motocycle(brandName: "Kawasaki", modelName: "Ninja", modelYear: 2005,
            engineNoise: "Neeeeeeeeeeeeeeeeow!")
        
        // Add it to the array
        self.vehicles.append(kawasaki)
        
        // Create a truck
        let silverado = Truck(brandName: "Chevrolet", modelName: "Silverado", modelYear: 2011,
            powerSource: "gas engine", numberOfWheels: 4, cargoCapacityCubcFeet: 53)
        
        // Add it to the array
        vehicles.append(silverado)
        
        // Create another truck
        let eighteenWheeler = Truck(brandName: "Peterbilt", modelName: "579", modelYear: 2013, powerSource: "diesel engine", numberOfWheels: 18, cargoCapacityCubcFeet: 408)
        
        // Add it to the array
        vehicles.append(eighteenWheeler)
        // Sort the array by model year
        vehicles.sortInPlace{$0.modelYear < $1.modelYear}
        
    }
}

