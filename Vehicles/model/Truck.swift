//
//  Truck.swift
//  Vehicles
//
//  Created by Le Ngoc Giang on 1/29/16.
//  Copyright © 2016 Razeware, LLC. All rights reserved.
//

import Foundation

class Truck: Vehicle {
    var cargoCapacityCubcFeet: Int = 0
    
    // MARK: Private methods
    
    private func soundBackupAlarm()->String {
        return "Beep! Beep! Beep! Beep!"
    }
    override var vehicleDetail:String {
        let basicDetails = super.vehicleDetail
        
        var truckDetailsBuilder = "\n\nTruck-Specific Details:\n\n"
        
        truckDetailsBuilder += "Cargo Capacity:\(cargoCapacityCubcFeet) cubic feet"
        
        let truckDetails = basicDetails + truckDetailsBuilder
        
        return truckDetails
    }
    // MARK: - Superclass overrides
    override func goForward() -> String {
        return String(format: "%@ Depress gas pedal", changeGear("Drive"))
    }
    
    override func stopMoving() -> String {
        return String(format: "Depress fabrake pedal", changeGear("Pard"))
    }
    
    override func goBackward() -> String {
        if cargoCapacityCubcFeet > 100 {
            // Sound a backup alarm first
            return String(format: "Wait for \"%@\",then %@", soundBackupAlarm(),changeGear("Reverse"))
        }else {
            return String(format: "%@ Depress gas pedal.", changeGear("Reverse"))
        }
    }
    
    override func makeNoise() -> String {
        switch numberOfWhells {
        case Int.min...4:
            return "Beep beep!"
        case 5...8:
            return "Honk!"
        default :
            return "HOOOOOOOOONK !"
        }
    }
}