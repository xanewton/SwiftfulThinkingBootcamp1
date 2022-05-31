//
//  Bootcamp24.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-21.
//

import SwiftUI

// Animations
struct Bootcamp24: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                withAnimation(.default) {
                    isAnimated.toggle()
                }
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300
                )
            Spacer()
        }
    }
}

struct Bootcamp24_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp24()
    }
}
