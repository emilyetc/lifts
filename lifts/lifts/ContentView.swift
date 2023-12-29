//
//  ContentView.swift
//  lifts
//
//  Created by Emily Wang & Atulya Lohani on 12/28/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            VStack {
                Text("Welcome")
                    .font(.largeTitle)
            }
            Divider()
            VStack{
                Text("Log In").font(.title)
                
                Text("Sign Up").font(.title)
            }
            
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
