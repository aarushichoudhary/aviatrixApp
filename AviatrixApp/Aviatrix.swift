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
    //you need a value or will be nhppy no empty ""
    init(userName: String){
        author = userName
    }
    var running = false
    
    func start() -> Bool {
        running = true
        return running
       
    }
    
    func refuel() {
        
    }
    
    func flyTo(destination : String) {
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

