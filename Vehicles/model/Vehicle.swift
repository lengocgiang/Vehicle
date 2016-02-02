//
//  Vehicle.swift
//  Vehicles
//
//  Created by Ray Fix on 9/8/14.
//  Copyright (c) 2014 Razeware, LLC. All rights reserved.
//

import Foundation

class Vehicle {
    let brandName :String
    let modelName :String
    let modelYear :Int
    let powerSource :String
    let numberOfWhells :Int
    
    // MARK: Initialization methods
    init(brandName:String,modelName:String,modelYear:Int,powerSource:String,numberOfWheels:Int){
        self.brandName = brandName
        self.modelName = modelName
        self.modelYear = modelYear
        self.powerSource = powerSource
        self.numberOfWhells = numberOfWheels
    }
    
    var vehicleTitle:String {
        return String(format: "%d %@ %@", modelYear,brandName,modelName)
    }
    
    var vehicleDetail:String {
        var basicDetails = "Basic vehicle details : \n\n"
        basicDetails += "Brand name: \(brandName)\n"
        basicDetails += "Model name: \(modelName)\n"
        basicDetails += "Model year: \(modelYear)\n"
        basicDetails += "Power source: \(powerSource)\n"
        basicDetails += "# of wheels: \(numberOfWhells)\n"
        return basicDetails
    }

    func goForward()->String {
        return "null"
    }
    
    func goBackward()->String {
        return "null"
    }
    
    func stopMoving()->String {
        return "null"
    }
    
    func turn(degree:Int)->String {
        var normalizedDegrees = degree
        
        let degreesInACycle = 360
        
        if (normalizedDegrees > degreesInACycle || normalizedDegrees < -degreesInACycle) {
            normalizedDegrees = normalizedDegrees % degreesInACycle
        }
        return String(format: "Turn %d degrees.", normalizedDegrees)
    }
    
    func changeGear(newGearName:String)->String {
        return String(format: "Put %@ into %@ gear", self.modelName,newGearName)
    }
    
    func makeNoise()->String {
        return "null"
    }
}

extension Vehicle: CustomStringConvertible {
    var description:String {
        return vehicleTitle + "\n" + vehicleDetail
    }
}


