//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    
    var author  =  ""
    
    var data = AviatrixData()
    
    var currentLocation = "St. Louis"
    
    var distanceTraveled = 0//miles
    
    var maxFuel = 5000//gallons
    
    var fuelLevel = 5000.0 // gallons
    
    var milesPerGallon = 0.4 //mpg
    
    var fuelCost = 0.0 //$
    
    //you need a value or will be nhppy no empty ""
    init(userName: String){
        author = userName
    }
    var running = false
    
    func start() -> Bool {
        running = true
        return running
       
    }
    
    func refuel() -> Double {
        let gallonsNeeded = Double(maxFuel) - fuelLevel
        let data = AviatrixData()
        fuelCost +=  gallonsNeeded * data.fuelPrices[currentLocation]!
        fuelLevel = 5000.0
        return gallonsNeeded
    }
    
    func flyTo(destination : String) {
        // evry location u need to add distance we went
        //ex car, bart station, bart, walked , shuttle 1, shuttle 2, walked
        // it means plus itself
        distanceTraveled += distanceTo(currentLocation: currentLocation, target : destination)
        
        //createa fuelSpent variable that calculates how much fuel you have used...
        
        //update fuelLevel based on fuelSpent
        
        let fuelSpent = Double(distanceTraveled)/milesPerGallon
        fuelLevel -= fuelSpent
        //decrease
        currentLocation = destination
    }
    
    //arrow defines what we are looking for
    func distanceTo(currentLocation : String, target : String) -> Int{
        // exclamation is used to unwrap data, and tells the program that there is data on the other side for sure (you do no need to do this when computer recognizes it)
        return data.knownDistances[currentLocation]![target]!
     // ! saying comp doesnt know it's real. telling apple we want to wrap the data wthout questioning it.
        // the data above goes into the sl dictionarykey, and goes into the phoenix and they key for phoneix
    }
    
    func knownDestinations() -> [String] {
       return ["St. Louis", "Phoenix", "Denver", "SLC"]
    }
}


