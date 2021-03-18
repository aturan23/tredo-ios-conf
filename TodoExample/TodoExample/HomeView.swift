//
//  HomeView.swift
//  TodoExample
//
//  Created by Turan Assylkhan on 18.03.2021.
//

import SwiftUI

struct Model: Identifiable {
    let id = UUID()
    let text: String
    let time: String
}

struct HomeView: View {
    
    let models: [Model] = [
        .init(text: "Some long text", time: "21:30"),
        .init(text: "Some long text", time: "21:30"),
        .init(text: "Some long text", time: "21:30"),
        .init(text: "Some long text", time: "21:30"),
        .init(text: "Some long text", time: "21:30"),
        .init(text: "Some long text", time: "21:30"),
    ]
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Text("ToDo app")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                    
                    Spacer()
                }
                .padding()
                
                ScrollView {
                    LazyVStack {
                        ForEach(models) { model in
                            VStack {
                                HStack {
                                    Rectangle()
                                        .frame(width: 3, height: 50)
                                        .foregroundColor(.blue)
                                        
                                    VStack(alignment: .leading) {
                                        Text(model.text)
                                            .font(.title)
                                        Text(model.time)
                                            .foregroundColor(.gray)
                                    }
                                    
                                    Spacer()
                                }
                                .padding()
                            }
                            .background(Color.white)
                            .cornerRadius(10)
                            .padding(.horizontal, 10)
                        }
                    }
                }
            }
        }
        .background(Color.black.opacity(0.06).ignoresSafeArea())
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
