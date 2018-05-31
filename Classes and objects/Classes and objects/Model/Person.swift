//
//  Person.swift
//  Classes and objects
//
//  Created by Hieu Nguyen on 5/30/18.
//  Copyright © 2018 HMdev. All rights reserved.
//

import Foundation

class Person {
    var firstName : String = ""
    var middleName : String?
    var lastName : String = ""
    weak var car : Car?
    weak var smartCar : Smartcar?
    
    // init method 1 - Car
    init(fName: String, mName: String?, lName: String, whatCar: Car?){
        self.firstName = fName
        self.lastName = lName
        car = whatCar
        
        guard let mName = mName else {
            return
        }
        
        self.middleName = mName
    }
    
    // init method 2 - Smartcar
    init(fName: String, mName: String?, lName: String, whatSmartcar: Smartcar?){
        self.firstName = fName
        self.lastName = lName
        smartCar = whatSmartcar
        
        guard let mName = mName else {
            return
        }
        
        self.middleName = mName
    }
    
    // prints Person info 
    func printPersonInformation(){
        if let middleName = middleName {
            print("Person name: " + firstName + " " + middleName + " " + lastName)
        } else {
            print("Person name: " + firstName + " " + lastName)
        }
        
        if let car = car {
            car.printCarDetails()
        }
        
        if let smartCar = smartCar {
            smartCar.printCarDetails()
        }
    }
    
}
