//
//  NewLogView.swift
//  Lifts
//
//  Created by Emily Wang & Atulya Lohani on 6/13/23.
//

import SwiftUI

struct NewLogView: View {
    @State private var exerciseOne = ""
    @State private var date = Date()
    @State var numExercises = 1
    @State var name: [String] = []
    var body: some View {
        NavigationView{
        Form{
            Section(){
                DatePicker("Date", selection: $date, displayedComponents: .date)
            }
            Section(header : Text("Add EXERCISES")){
                VStack(){
                    HStack(){
                        Text("Name").padding()
                        Text("Sets").padding()
                        Text("Reps").padding()
                        Text("Wgt").padding()
                    }
                    ForEach(0..<numExercises, id: \.self) { idx in
                        // TODO: figure out a way such that we can bind local variables to the text fields
                        @State var exercise : String = ""
                        @State var sets : Int = 0
                        @State var reps : Int = 0
                        @State var weight : Double = 0.0
                        HStack(){TextField("Name", text: $exercise)
                            TextField("Sets", value: $sets, format: .number).padding()
                            TextField("Reps", value: $reps, format: .number).padding()
                            TextField("Weight", value: $weight, format : .number).padding()
                        }
                        }


                                  Button(action:{
                                          self.numExercises += 1
                                  }) {
                                      Text("Add more")
                                  }
                    
                    
                }.textFieldStyle(.roundedBorder)
               
            }
        }.navigationTitle("Exercises")
        }
    }
}

struct NewLogView_Previews: PreviewProvider {
    static var previews: some View {
        NewLogView()
    }
}
