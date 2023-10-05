//
//  MainView.swift
//  Snake
//
//  Created by Denis Horvat  on 26.08.2023.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var snake: Snake
    @State var selectedSnakeSpeed: Int
    @State var selectedSnakeSize: Double
    
    init(snake: Snake = .init(), selectedSnakeSpeed: Int, selectedSnakeSize: Double) {
        _snake = StateObject(wrappedValue: snake)
        self.selectedSnakeSize = selectedSnakeSize
        self.selectedSnakeSpeed = selectedSnakeSpeed
        
        self.snake.selectedSnakeSize = selectedSnakeSize
        self.snake.selectedSnakeSpeed = selectedSnakeSpeed
    }
    
    var body: some View {
        VStack{
            ScoreView(score: snake.snakePositions.count-3, topScore: snake.topScore)
            
            GeometryReader{ geometry in
                ZStack(alignment: .center){
                    
                    //playground
                    Rectangle()
                        .foregroundColor(.white)
                        .shadow(radius: 6)
                    
                    //Snake body
                    HeadView(size: snake.snakeSize, direction: snake.direction, position: snake.snakePositions[0])
                    
                    ForEach(1..<snake.snakePositions.count, id:\.self) { index in
                        BodyView(size: snake.snakeSize, position: snake.snakePositions[index])

                    }
                    //Food
                    RoundedRectangle(cornerRadius: 3)
                        .foregroundColor(.red)
                        .frame(width: snake.snakeSize, height:snake.snakeSize)
                        .position(snake.foodPosition)
                    
                }
                .onReceive(snake.timer){ _ in
                    snake.move(in: geometry)
                }
                .border(.gray, width: 2)
            }
            
            Spacer()
            
            ButtonsView(direction: $snake.direction)
        }
        .background(.black)
        .navigationBarHidden(true)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(selectedSnakeSpeed: 2, selectedSnakeSize: 2)
    }
}
