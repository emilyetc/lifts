//
//  Exercise.swift
//  Lifts
//
//  Created by Atulya Lohani on 6/20/23.
//

import Foundation

struct ExerciseDay : Equatable {
    var date : Date
    var exercises: [Exercise] = []
    
    init(date: Date, exercises: [Exercise]){
        self.date = date
        self.exercises  = exercises
    }
    

}
struct Exercise : Equatable {
    
    var name : String
    var sets : Int
    var reps : Int
    var weight : Double
    
    init( name: String, sets: Int, reps: Int, weight: Double) {
        self.name = name
        self.sets = sets
        self.reps = reps
        self.weight = weight
    }
    
}
