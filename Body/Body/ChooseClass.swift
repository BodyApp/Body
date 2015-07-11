//
//  ChooseClass.swift
//  Body
//
//  Created by Daniel Liebeskind on 7/11/15.
//  Copyright (c) 2015 Body. All rights reserved.
//

import Foundation

class ChooseClass {
    var workoutTypes = ["Yoga", "Crossfit", "Pilates", "Bootcamp"]
    var trainerTypes = ["Trainer X", "Trainer Pro"]
    
    func getWorkoutTypes() -> [String] {
        return workoutTypes
    }
    
    func getTrainerTypes() -> [String] {
        return trainerTypes
    }
}