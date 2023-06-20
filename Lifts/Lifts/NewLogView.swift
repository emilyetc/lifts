//
//  NewLogView.swift
//  Lifts
//
//  Created by Emily Wang & Atulya Lohani on 6/13/23.
//

import SwiftUI
class ExerciseData: ObservableObject {
    @Published var exerciseDays: [ExerciseDay] = []
}
struct NewLogView: View {
    @EnvironmentObject var exerciseData: ExerciseData
    @State private var exerciseOne = ""
    @State private var date = Date()
    @State var numExercises = 0
    @State var name: [String] = []
    @State private var exerciseDay :ExerciseDay = ExerciseDay(date: Date(), exercises :[Exercise()])
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView{
            Form{
                Section(){
                    DatePicker("Date", selection: $date, displayedComponents: .date)
                }
                Section(header : Text("Add Exercises")){
                    VStack(){
                        HStack(){
                            
                            Text("Name").padding()
                            Text("Sets").padding()
                            Text("Reps").padding()
                            Text("Wgt").padding()
                        }
                        ForEach(exerciseDay.exercises.indices, id: \.self) { index in
                            let exercise = $exerciseDay.exercises[index]
                            ExerciseRowView(exercise: exercise)
                        }
                        
                        Button(action: {
                            exerciseDay.exercises.append(Exercise(name: "", sets: 0, reps: 0, weight: 0.0))
                        }) {
                            Text("Add more")
                        }
                    }.textFieldStyle(.roundedBorder)
                   
                }
                Section{
                    Button(action: {
                                exerciseData.exerciseDays.append(exerciseDay)
                                exerciseDay = ExerciseDay(date: Date(), exercises: [])
                        presentationMode.wrappedValue.dismiss()
                            }) {
                                Text("Save Entry")
                            }
                }
            }.navigationTitle("Exercises")
        }
    }
}
struct ExerciseRowView: View {
    @Binding var exercise: Exercise
    
    var body: some View {
        HStack {
            TextField("Name", text: $exercise.name)
            TextField("Sets", value: $exercise.sets, formatter: NumberFormatter())
            TextField("Reps", value: $exercise.reps, formatter: NumberFormatter())
            TextField("Weight", value: $exercise.weight, formatter: NumberFormatter())
        }
    }}

struct NewLogView_Previews: PreviewProvider {
    static var previews: some View {
        NewLogView()
    }
}
