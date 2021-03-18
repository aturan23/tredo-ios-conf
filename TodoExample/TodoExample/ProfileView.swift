//
//  ProfileView.swift
//  TodoExample
//
//  Created by Turan Assylkhan on 18.03.2021.
//

import SwiftUI

struct ProfileView: View {
    
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        VStack {
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(.gray)
            Text(viewModel.name)
            
            VStack {
                RoundedRectangle(cornerRadius: 25.0)
                    .foregroundColor(.gray)
                
                RoundedRectangle(cornerRadius: 25.0)
                    .foregroundColor(.gray)
                
                HStack {
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.gray)
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.gray)
                }
            }
            .padding()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
