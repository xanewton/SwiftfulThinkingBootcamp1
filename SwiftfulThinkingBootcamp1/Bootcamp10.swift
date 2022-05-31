//
//  Bootcamp10.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-07.
//

import SwiftUI

// Padding
struct Bootcamp10: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text("This is the description of what we do in the screen. It is multiple lines and we will align the text to the left.")
        }
        .padding()
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: .black.opacity(0.3),
                    radius: 10, x: 0.0, y: 10)
        )
        .padding(.horizontal, 10)
    }
}

struct Bootcamp10_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp10()
    }
}
