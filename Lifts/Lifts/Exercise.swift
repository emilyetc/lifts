//
//  Exercise.swift
//  Lifts
//
//  Created by Emily Wang & Atulya Lohani on 6/20/23.
//

import Foundation

struct ExerciseDay : Equatable, Identifiable {
    var date : Date
    let id = UUID()
    var exercises: [Exercise] = []
    
    init(){
        date = Date()
        exercises = []
    }
    init(date: Date, exercises: [Exercise]){
        self.date = date
        self.exercises  = exercises
    }
    

}
struct Exercise : Equatable, Identifiable {
    let id = UUID()
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
    init(){
        self.name = ""
        self.sets = 0
        self.reps = 0
        self.weight = 0;
    }
    
}
