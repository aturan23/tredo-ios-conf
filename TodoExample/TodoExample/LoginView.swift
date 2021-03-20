//
//  LoginView.swift
//  TodoExample
//
//  Created by Turan Assylkhan on 20.03.2021.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        ZStack {
            
            Color
                .purple
                .ignoresSafeArea()
            
            VStack {
                
                Spacer()
                
                VStack {
                    VStack(spacing: 30) {
                        HStack {
                            Text("Login")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                            
                            Spacer()
                            
                        }
                        
                        VStack(spacing: 15) {
                            VStack(alignment: .leading) {
                                Text("Full name")
                                TextField("Please, enter your name", text: $viewModel.name)
                                Rectangle()
                                    .frame(height: 2)
                                    .foregroundColor(viewModel.isValidName ? .black : .red)
                            }
                            
                            VStack(alignment: .leading) {
                                Text("Password")
                                SecureField("Please, enter your password", text: $viewModel.password)
                                Rectangle()
                                    .frame(height: 2)
                                    .foregroundColor(viewModel.isValidPassword ? .black : .red)
                            }
                        }
                        
                        Button(action: {
                            viewModel.isValidName = !viewModel.name.isEmpty
                            viewModel.isValidPassword = viewModel.password.count > 5
                            
                            viewModel.isLoggedIn = viewModel.isValidName && viewModel.isValidPassword
                        }, label: {
                            Text("Login")
                                .foregroundColor(.white)
                                .font(.title)
                                .fontWeight(.bold)
                                .padding(.horizontal, 50)
                                .padding(.vertical, 10)
                                .background(Color.purple)
                                .cornerRadius(10)
                        })
                    }
                    .padding()
                }
                .background(Color.white)
                .cornerRadius(15)
                .padding()
            }
        }
    }
    
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
