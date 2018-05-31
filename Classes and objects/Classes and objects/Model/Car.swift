//
//  Car.swift
//  Classes and objects
//
//  Created by Hieu Nguyen on 5/30/18.
//  Copyright © 2018 HMdev. All rights reserved.
//

import Foundation

// Custom data type
enum carType {
    case Sedan
    case Coupe
    case Hatchback
}

class Car {
    var typeOfCar : carType = .Sedan
    var color : String = ""
    var seats : Int = 0
    weak var owner : Person?
    
    // Basic init
    init(){
        owner = nil
    }
    
    // An addon to build upon the initial init()
    convenience init(selectedColor : String, numberOfSeats: Int, carOwner: Person?, type: carType){
        // Must call self.init() before setting properties
        self.init()
        
        self.color = selectedColor
        self.seats = numberOfSeats
        self.owner = carOwner
        self.typeOfCar = type
    }
    
    // print car details
    func printCarDetails(){
        print(color)
        print(seats)
        print(typeOfCar)
        
        guard let owner = owner else {
            return
        }
        print(owner.firstName + " " + owner.lastName)
        
    }
}
