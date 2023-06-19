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
    var body: some View {
        NavigationView{
        Form{
            Section(){
                DatePicker("Date", selection: $date, displayedComponents: .date)
            }
            Section(header : Text("Add EXERCISES")){
                TextField("Exercise 1", text: $exerciseOne)
                
            }.textFieldStyle(.roundedBorder)
           
        }.navigationTitle("Exercises")
        }
    }
}

struct NewLogView_Previews: PreviewProvider {
    static var previews: some View {
        NewLogView()
    }
}
