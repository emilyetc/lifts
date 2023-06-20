//
//  ContentView.swift
//  Lifts
//
//  Created by Emily Wang & Atulya Lohani on 6/9/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var exerciseData = ExerciseData()
    var body: some View {
        NavigationView(){
        VStack() {
            HStack(){Text("Weclome").bold()
                .padding()
            }
            VStack(){
                HStack(){
                    NavigationLink(
                        destination: NewLogView()) {
                        Text("Create new Entry")
                 }.buttonStyle(CreateButton())}
                
            }.frame(maxWidth: .infinity).padding()
           
        }
            ScrollView {
                VStack {
                    ForEach(exerciseData.exerciseDays) { exerciseDay in
                        Text("\(exerciseDay.date)") // TODO: Display exercises and allow for detailed view
                    }
                }
            }
        }.environmentObject(exerciseData)
        
    }
}
struct CreateButton: ButtonStyle {
    var colors = AppColors();
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(colors.cust_green)
            .cornerRadius(14)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ExerciseData())
    }
}
