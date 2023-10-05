//
//  SettingsView.swift
//  Snake
//
//  Created by Denis Horvat  on 30.08.2023.
//

import SwiftUI

struct SettingsView: View {
    
    @Binding var selectedSnakeSpeed: Int
    @Binding var selectedSnakeSize: Double
    
    var body: some View {
        
        NavigationView {
            
            Form {
                
                Section(header: Text("Snake")) {

                    Picker(selection: $selectedSnakeSpeed, label: Text("Snake speed")) {
                        Text("Slow").tag(1)
                        Text("Normal").tag(2)
                        Text("Fast").tag(3)
                    }
                    VStack{
                        HStack{
                            Text("Snake size: ")
                            if selectedSnakeSize == 1{
                                Text("Small")
                                    .frame(minWidth: 60)
                            }
                            else if selectedSnakeSize == 2{
                                Text("Normal")
                                    .frame(minWidth: 60)
                            }
                            else {
                                Text("Big")
                                    .frame(minWidth: 60)
                            }
                        }
                        Slider(value: $selectedSnakeSize, in: 1...3, step:1)

                    }
                }
                Section(header: Text("Display")){
                    Toggle(isOn: .constant(true), label: {
                        Text("Dark mode")
                    })
                    
                }
            }
            .navigationTitle("Settings")
        }
    }
}


struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(selectedSnakeSpeed: .constant(1), selectedSnakeSize: .constant(1.0))
    }
}
