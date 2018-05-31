//
//  Smartcar.swift
//  Classes and objects
//
//  Created by Hieu Nguyen on 5/31/18.
//  Copyright © 2018 HMdev. All rights reserved.
//

import Foundation

class Smartcar : Car {
    var smartness : Int
    
    override init(){
        self.smartness = 0
        
    }
    
    // An addon to build upon the initial init()
    convenience init(smartLvl: Int){
        self.init()
        
        self.smartness = smartLvl
        
    }
    
    // Overrides our existing func.
    // Should only print smartness level
    override func printCarDetails() {
        // Runs parent class function
        super.printCarDetails()
        
        greetings()
    }
    
    func greetings(){
        guard let fname = self.owner?.firstName, let lname = self.owner?.lastName else {
            return
        }
        
        print("Hello \(fname) " + " " + "\(lname)")
    }
    
}
