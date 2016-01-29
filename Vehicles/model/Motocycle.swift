//
//  Motocycle.swift
//  Vehicles
//
//  Created by Le Ngoc Giang on 1/29/16.
//  Copyright © 2016 Razeware, LLC. All rights reserved.
//

import Foundation

class Motocycle: Vehicle {
    override init() {
        super.init()
        numberOfWhells = 2
        powerSource = "Gas engine"
    }
    var engineNoise = ""
    
    // MARK: 
    
    override var vehicleDetail: String {
        let basicDetail = super.vehicleDetail
        
        var motocycleDetailsBuilder = "\n\n Motocycle-Specifics Details:\n\n"
        
        motocycleDetailsBuilder += "Engine noise \(engineNoise)"
        
        let motocycleDetails = basicDetail + motocycleDetailsBuilder
        
        return motocycleDetails
    }
    
    // MARK: Superclass overrides
    override func goForward() -> String {
        return String(format: "%@ Open throttle", changeGear("Forward"))
    }
    
    override func goBackward() -> String {
        return String(format: "%@ Walk %@ backwards using feet.", changeGear("Neutral"),modelName)
    }
    
    override func stopMoving() -> String {
        return "Squeeze brakes"
    }
    
    override func makeNoise() -> String {
        return self.engineNoise
    }
}