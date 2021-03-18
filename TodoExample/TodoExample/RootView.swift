//
//  RootView.swift
//  TodoExample
//
//  Created by Turan Assylkhan on 18.03.2021.
//

import SwiftUI

struct RootView: View {
    
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        if viewModel.isLoggedIn {
            ContentView()
        } else {
            LoginView()
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
