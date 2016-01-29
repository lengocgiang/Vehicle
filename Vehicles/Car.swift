//
//  Car.swift
//  Vehicles
//
//  Created by Le Ngoc Giang on 1/28/16.
//  Copyright © 2016 Razeware, LLC. All rights reserved.
//

import Foundation

class Car: Vehicle {
    override init() {
        super.init()
        numberOfWhells = 4
    }
    var isConvertible:Bool  = false
    var isHatchback:Bool = false
    var hasSunroof:Bool = false
    var numberOfDoors:Int = 0
    
    func create(brandName:String,modelName:String,modelYear:Int,isConvertible:Bool,isHatchback:Bool,hasSunroof:Bool,numberOfDoors:Int,powerSource:String)->Void{
        self.brandName = brandName
        self.modelName = modelName
        self.modelYear = modelYear
        self.isConvertible = isConvertible
        self.isHatchback = isHatchback
        self.hasSunroof = hasSunroof
        self.numberOfDoors = numberOfDoors
        self.powerSource = powerSource
    }
    override var vehicleDetail:String {
        let basicDetail = super.vehicleDetail
        
        // initialize mutable string
        var carDetailBuilder =  "\n\nCar-specifics details:\n\n"
        
        // string helpers for booleans
        let yes = "Yes\n"
        let no  = "No\n"
        
        // Add info about car-specifics
        carDetailBuilder += "Has sunroof: "
        carDetailBuilder += hasSunroof ? yes : no
        
        carDetailBuilder += "Is Hatchback: "
        carDetailBuilder += isHatchback ? yes : no
        
        carDetailBuilder += "Is Convertible: "
        carDetailBuilder += isConvertible ? yes : no
        
        carDetailBuilder += "Number of doors: \(numberOfDoors)"
        
        let carDetail = basicDetail + carDetailBuilder
        
        return carDetail
    }
    // MARK: Private method implementations
    private func start()->String {
        return String(format: "Start power source: %@", powerSource)
    }
    
    // MARK: Superclass overrides
    
    override func goForward() -> String {
        return String(format: "%@ %@ Then depress gas pedal", start(),changeGear("Forward"))
    }
    
    override func goBackward() -> String {
        return String(format: "%@ %@ Check your rear view minor. Then depress gas pedal", start(),changeGear("Reverse"))
    }
    
    override func stopMoving() -> String {
        return String(format: "Depress brake pedal. %@", changeGear("Park"))
    }
    
    override func makeNoise() -> String {
        return "Beep beep!!!"
    }
    
    
    
}