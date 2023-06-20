//
//  ExerciseEntryStore.swift
//  Lifts
//
//  Created by Atulya Lohani on 6/20/23.
//

import Foundation
class ExerciseStore: ObservableObject {
    @Published var entries: [ExerciseDay] = []
    @Published var entryCount: Int = 0
    
    func createEntry (date: Date, exercises : [Exercise]) {
        let newEntry = ExerciseDay(date:date, exercises:exercises)
        entries.append(newEntry)
    }
    
    func delete(at index: Int) {
        entries.remove(at: index)
    }
    
    func update(entry: ExerciseDay, name: String?, sets: Int?, reps: Int?, weight: Double?) {
        if let index = entries.firstIndex(of: entry) {
            var entry = entries[index]
            //TODO: make an update method in Exercise that wil ltake in the params for this method, and change the exercises that need to be changed in number of reps, weight, sets, or name.
            entries[index] = entry
        }
    }
    
    func numWorkouts(entries: [ExerciseStore]) -> Int {
        return entries.count;
    }
    
    
}
