//
//  MainMenuView.swift
//  Snake
//
//  Created by Denis Horvat  on 30.08.2023.
//

import SwiftUI

struct MainMenuView: View {
    
    @State var selectedSnakeSpeed: Int = 2
    @State var selectedSnakeSize: Double = 2
    
    var body: some View {
        NavigationView{
            VStack{
                Text("SNAKE")
                    .foregroundColor(.green.opacity(0.5))
                    .fontWeight(.heavy)
                    .padding(.top, 50)
                    .font(.system(size: 40))
                Spacer()
                NavigationLink(destination: MainView(selectedSnakeSpeed: selectedSnakeSpeed, selectedSnakeSize: selectedSnakeSize) ){
                    Text("Start")
                        .frame(minWidth: 150)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)
                }
                .padding(.bottom, 20)
                
                
                NavigationLink(destination: SettingsView(selectedSnakeSpeed: $selectedSnakeSpeed, selectedSnakeSize: $selectedSnakeSize) ){
                    Text("Settings")
                        .frame(minWidth: 150)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)
                        
                }

                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)

        }
        .navigationBarHidden(true)
    }
}

struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView()
    }
}
