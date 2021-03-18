//
//  ContentView.swift
//  TodoExample
//
//  Created by Turan Assylkhan on 18.03.2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            HomeView().tabItem {
                Image(systemName: "house")
            }
            ProfileView().tabItem {
                Image(systemName: "gear")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
