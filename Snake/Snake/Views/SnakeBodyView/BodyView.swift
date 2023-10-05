//
//  BodyView.swift
//  Snake
//
//  Created by Denis Horvat  on 30.08.2023.
//

import SwiftUI

struct BodyView: View {
    
    var size: CGFloat
    var position: CGPoint
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.green)
                .frame(width: size, height: size)
                .position(position)
            Rectangle()
                .stroke(Color.gray, lineWidth: 0.5)
                .frame(width: size, height: size)
                .position(position)

        }
    }
}

struct BodyView_Previews: PreviewProvider {
    static var previews: some View {
        BodyView(size: 10, position: CGPoint(x:10,y:10))
    }
}
