//
//  main.swift
//  Classes and objects
//
//  Created by Hieu Nguyen on 5/30/18.
//  Copyright © 2018 HMdev. All rights reserved.
//

import Foundation

//var wendoCar = Car()
//
//let wendy = Person(fName: "Wendy", mName: "Nhan", lName: "Giang", whatCar: wendoCar)
//
//wendoCar.color = "White"
//wendoCar.seats = 5
//wendoCar.typeOfCar = .Sedan
//wendoCar.owner = wendy
//
//
//wendy.printPersonInformation()

var smartWendoCar = Smartcar(smartLvl: 100)

let wendo = Person(fName: "smartWendo", mName: nil, lName: "smartGiang", whatSmartcar: smartWendoCar)

smartWendoCar.color = "Blue"
smartWendoCar.seats = 4
smartWendoCar.typeOfCar = .Coupe
smartWendoCar.owner = wendo

wendo.printPersonInformation()
