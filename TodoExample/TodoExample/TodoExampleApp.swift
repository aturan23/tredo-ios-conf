//
//  TodoExampleApp.swift
//  TodoExample
//
//  Created by Turan Assylkhan on 18.03.2021.
//

import SwiftUI

class ViewModel: ObservableObject {
    
    @Published var name = ""
    @Published var password = ""
    
    @Published var isValidName = true
    @Published var isValidPassword = true
    
    @Published var isLoggedIn = false
}

@main
struct TodoExampleApp: App {
    
    let viewModel = ViewModel()
    
    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(viewModel)
        }
    }
}
