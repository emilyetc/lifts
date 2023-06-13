//
//  Main.swift
//  Lifts
//
//  Created by Emily Wang & Atulya Lohani on 6/13/23.
//

import SwiftUI

struct Main: View {
    var body: some View {
        TabView(selection: .constant(1)) {
            ContentView().tabItem { Label("Exercise", systemImage: "figure.walk") }.tag(1)
            Text("Tab Content 2").tabItem { Label("Food", systemImage: "fork.knife.circle") }.tag(2)
        }
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
