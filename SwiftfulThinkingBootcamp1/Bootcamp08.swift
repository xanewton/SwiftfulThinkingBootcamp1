//
//  Bootcamp08.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-05.
//

import SwiftUI

// Background and Overlay
struct Bootcamp08: View {
    var body: some View {
        // Basic idea is an overlay on top and background in the back
        /*Rectangle()
            .frame(width: 100, height: 100)
            .overlay(
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 50, height: 50),
                alignment: .topLeading
            )
            .background(
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150),
                alignment: .bottomTrailing
            )*/
        
        // A more complex example: a notification button
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(Color.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))]),
                            startPoint: .topLeading,
                            endPoint: .bottomLeading)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(
                        color: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 0.5)),
                        radius: 10, x: 0.0, y: 10)
                    .overlay(
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("7")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            )
                            .shadow(
                                color: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 0.5)),
                                radius: 10, x: 5, y: 5)
                        ,
                        alignment: .bottomTrailing
                    )
            )
    }
}

struct Bootcamp08_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp08()
    }
}
