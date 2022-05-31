//
//  Bootcamp25.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-22.
//

import SwiftUI

// Animation curves and animation timing
struct Bootcamp25: View {
    
    @State var isAnimating: Bool = false
    let timing: Double = 10.0
    
    var body: some View {
        VStack{
            Button("Button") {
                isAnimating.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20.0)
                .frame(width: isAnimating ? 300 : 50, height: 25)
                .animation(Animation.default)
            
            RoundedRectangle(cornerRadius: 20.0)
                .frame(width: isAnimating ? 300 : 50, height: 25)
                .animation(Animation.linear(duration: timing))
            
            RoundedRectangle(cornerRadius: 20.0)
                .frame(width: isAnimating ? 300 : 50, height: 25)
                .animation(Animation.easeIn(duration: timing))
            
            RoundedRectangle(cornerRadius: 20.0)
                .frame(width: isAnimating ? 300 : 50, height: 25)
                .animation(Animation.easeInOut(duration: timing))
            
            RoundedRectangle(cornerRadius: 20.0)
                .frame(width: isAnimating ? 300 : 50, height: 25)
                .animation(Animation.easeOut(duration: timing))
            
            RoundedRectangle(cornerRadius: 20.0)
                .frame(width: isAnimating ? 300 : 50, height: 25)
                .animation(.spring())
            
            RoundedRectangle(cornerRadius: 20.0)
                .frame(width: isAnimating ? 300 : 50, height: 25)
                .animation(.spring(
                    response: 3.0,
                    dampingFraction: 0.5,
                    blendDuration: 1.0))
            
            Spacer()
        }
    }
}

struct Bootcamp25_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp25()
    }
}
