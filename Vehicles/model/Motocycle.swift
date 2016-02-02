//
//  Motocycle.swift
//  Vehicles
//
//  Created by Le Ngoc Giang on 1/29/16.
//  Copyright © 2016 Razeware, LLC. All rights reserved.
//

import Foundation

class Motocycle: Vehicle {

    let engineNoise: String
    
    init(brandName: String, modelName: String, modelYear: Int, engineNoise:String) {
        self.engineNoise = engineNoise
        super.init(brandName: brandName, modelName: modelName, modelYear: modelYear, powerSource: "Gas engine", numberOfWheels: 2)
    }
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