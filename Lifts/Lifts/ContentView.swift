//
//  ContentView.swift
//  Lifts
//
//  Created by Emily Wang & Atulya Lohani on 6/9/23.
//

import SwiftUI

struct ContentView: View {
    var colors = AppColors()
    var body: some View {
        NavigationView{
        VStack {
            HStack(){Text("Weclome").bold()
                .padding()}
            VStack{
                HStack(){Text("Create a new entry?").padding().background(colors.cust_green).cornerRadius(10.0)}
                
            }
           
            
        }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
