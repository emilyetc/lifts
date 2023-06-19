//
//  ContentView.swift
//  Lifts
//
//  Created by Emily Wang & Atulya Lohani on 6/9/23.
//

import SwiftUI

struct ContentView: View {
    
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
            }
           
        }
        }
        
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
        ContentView()
    }
}
