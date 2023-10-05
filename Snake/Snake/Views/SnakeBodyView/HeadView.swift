//
//  HeadView.swift
//  Snake
//
//  Created by Denis Horvat  on 30.08.2023.
//

import SwiftUI

struct HeadView: View {
    
    var size: CGFloat
    var direction: Direction
    var position: CGPoint
    
    var body: some View {
        ZStack{
            if direction == .right{
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width: size, height: size)
                    .cornerRadius(10)
                    .position(position)
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width: size/2, height: size)
                    .position(CGPoint(x:position.x-size/4, y:position.y))
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: size/2, height: size/5)
                    .position(CGPoint(x:position.x+size/2, y:position.y))
            }
            else if direction == .left{
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width: size, height: size)
                    .cornerRadius(10)
                    .position(position)
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width: size/2, height: size)
                    .position(CGPoint(x:position.x+size/4, y:position.y))
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: size/2, height: size/5)
                    .position(CGPoint(x:position.x-size/2, y:position.y))
            }
            else if direction == .up{
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width: size, height: size)
                    .cornerRadius(10)
                    .position(position)
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width: size, height: size/2)
                    .position(CGPoint(x:position.x, y:position.y+size/4))
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: size/5, height: size/2)
                    .position(CGPoint(x:position.x, y:position.y-size/2))
            }
            else if direction == .down{
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width: size, height: size)
                    .cornerRadius(10)
                    .position(position)
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width: size, height: size/2)
                    .position(CGPoint(x:position.x, y:position.y-size/4))
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: size/5, height: size/2)
                    .position(CGPoint(x:position.x, y:position.y+size/2))
            }
            else {
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width: size, height: size)
                    .position(position)
            }
        }
    }
}

struct HeadView_Previews: PreviewProvider {
    static var previews: some View {
        HeadView(size: 10, direction: .down, position: CGPoint(x:10,y:10))
    }
}
