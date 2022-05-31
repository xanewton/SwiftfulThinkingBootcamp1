//
//  Bootcamp26.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-22.
//

import SwiftUI

// Transitions
struct Bootcamp26: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: AnyTransition.opacity.animation(.easeOut)))
                    .animation(.easeIn)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct Bootcamp26_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp26()
    }
}
